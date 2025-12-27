#!/bin/vbash
# shellcheck shell=bash
# shellcheck source=/dev/null
dry_run=true

if [[ "$(id -g -n)" != 'vyattacfg' ]] ; then
    exec sg vyattacfg -c "/bin/vbash $(readlink -f "$0") $*"
fi

while getopts "cde" options; do
  case "${options}" in
  # -c Commit changes - default is dry-run
  c)
    echo 'Will commit changes'
    dry_run=false
    ;;
  d)
    echo 'Decrypting all *.gpg files'
    # Decrypt everything under secrets/
    find secrets/ -type f -name "*.gpg" -exec gpg --decrypt-files {} +
    # Decrypt everything under certificates/
    find certificates/ -type f -name "*.gpg" -exec gpg --decrypt-files {} +

    # Remove the now-decrypted .gpg files
    echo 'Removing decrypted .gpg files'
    find secrets/ -name "*.gpg" -type f -delete
    find certificates/ -name "*.gpg" -type f -delete

    echo 'Decryption complete'
    exit 0
    ;;
  e)
    echo 'Encrypting all plaintext files to *.gpg'

    # Process secrets/
    find secrets/ -type f ! -name "*.gpg" -print0 | while IFS= read -r -d '' file; do
      echo "Encrypting $file"
      gpg -c --batch --yes --output "${file}.gpg" "$file"
      # Remove plaintext only if encryption succeeded
      if [[ $? -eq 0 ]]; then
        rm -f "$file"
      fi
    done

    # Process certificates/
    find certificates/ -type f ! -name "*.gpg" -print0 | while IFS= read -r -d '' file; do
      echo "Encrypting $file"
      gpg -c --batch --yes --output "${file}.gpg" "$file"
      if [[ $? -eq 0 ]]; then
        rm -f "$file"
      fi
    done

    echo 'Encryption complete'
    exit 0
    ;;
  *)
    echo 'error in command line parsing' >&2
    exit 1
    ;;
  esac
done

# Include VyOS specific functions and aliases
source /opt/vyatta/etc/functions/script-template

# Reset the configuration
load /opt/vyatta/etc/config.boot.default

# Load secrets
for f in /config/secrets/*.env; do
  if [[ -f "${f}" ]]; then
    echo "Loading secrets ${f}"
    source "${f}"
  fi
done

echo ""
echo "Loaded secrets:"
echo "--------------------------"
env | grep -E '^(secret_)'

echo ""
echo "Loaded host specific env:"
echo "--------------------------"
if [[ -f "/config/hosts/$(hostname -s).env" ]]; then
  source "/config/hosts/$(hostname -s).env"
  env | grep -E '^(host_)'
else
  echo "No host specific env file found"
fi

echo ""
echo "Processing config-parts"
echo "--------------------------"
# Load all config files
for f in /config/config-parts/*.sh; do
  if [[ -f "${f}" ]]; then
    echo "Processing ${f}"
    envsubst < "${f}" | source /dev/stdin
  fi
done

echo ""
echo "Changes to running config:"
compare

if "${dry_run}"; then
  echo "Not saving changes, use -c to commit"
else
  # Commit and save
  echo "Committing and saving config"
  commit
  save
fi
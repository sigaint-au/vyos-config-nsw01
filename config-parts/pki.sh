# CA Root cert for FreeIPA
set pki ca IPA system-install
set pki ca IPA certificate "$(load_pem secrets/certificates/api/ca.crt)"

# Certificates for API 
set pki certificate IPA description "Certificate for API"
set pki certificate IPA private key "$(load_pem secrets/certificates/api/cert.key)"
set pki certificate IPA certificate  "$(load_pem secrets/certificates/api/cert.pem)"

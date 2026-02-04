# === Basic proxy setup ===
set service webproxy listen-address 10.120.14.1

# === Restrict access only to your network ===
set service webproxy access-list name ALLOW-10-120 rule 10 source address '10.120.0.0/16'
set service webproxy access-list name ALLOW-10-120 rule 10 action 'allow'

set service webproxy access-list name ALLOW-10-120 rule 999 action 'deny'
set service webproxy access-list name ALLOW-10-120 rule 999 source address '0.0.0.0/0'

set service webproxy access-list default-action 'deny'
set service webproxy access-list name ALLOW-10-120

set service webproxy cache-size '500'
set service webproxy cache-admin email 'admin@sigaint.au'
set service webproxy visible-hostname 'proxy.sigaint.au'
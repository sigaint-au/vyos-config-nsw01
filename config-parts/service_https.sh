
# Set API key and API
set service https api keys id console key "$secret_console_api_key"
set service https api rest
set service https api graphql

# Certs
set service https certificates ca-certificate IPA
set service https certificates certificate IPA_API

# Allow clients
# * prd-4e60.syd.sigaint.au (139.99.210.89)
#
set service https listen-address 0.0.0.0
set service https allow-client address 139.99.210.89
set service https tls-version 1.3
set service https port 9443
set service https enable-http-redirect
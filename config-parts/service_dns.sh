#!/bin/vbash

# Allow DNS forwarding from our IPv6 ranges
set service dns forwarding allow-from '2404:e80:4b6f::/48'

# Allow DNS forwarding from our IPv4 ranges
set service dns forwarding allow-from '10.120.0.0/16'

set service dns forwarding listen-address '0.0.0.0'
set service dns forwarding listen-address '::'

# Forward to the system DNS
set service dns forwarding system
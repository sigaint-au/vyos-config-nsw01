#!/bin/vbash

# Allow DNS forwarding from our IPv6 ranges
set service dns forwarding allow-from '2401:d002:7800::720/128'

# Allow DNS forwarding from our IPv4 ranges
set service dns forwarding allow-from '10.120.0.0/16'

# Forward to the system DNS
set service dns forwarding system
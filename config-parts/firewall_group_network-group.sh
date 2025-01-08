#!/bin/vbash

##
# Networks local to NSW01
set firewall group network-group NSW01_LOCAL_NETS network '10.120.0.0/16'

# IPv6 Local nets
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f::/48'
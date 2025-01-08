#!/bin/vbash

##
# Networks local to NSW01
#
set firewall group network-group NSW01_LOCAL_NETS network '10.120.10.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.11.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.12.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.13.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.14.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.20.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.21.0/24'

# IPv6 Local nets
set firewall group ipv6-address-group NSW01_LOCAL_NETS_6 address '2404:e80:4b6f:0::-2404:e80:4b6f:6::'
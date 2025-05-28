#!/bin/vbash

# Next DNS Servers
set service dhcpv6-server global-parameters name-server '2a07:a8c0::2a:b561'
set service dhcpv6-server global-parameters name-server '2a07:a8c1::2a:b561'

# DMZ
set service dhcpv6-server shared-network-name NET_NSW01_DMZ_6 option domain-search 'dmz.nsw01.sigaint.au'
set service dhcpv6-server shared-network-name NET_NSW01_DMZ_6 subnet 2404:e80:4b6f:1::/64 subnet-id '20'
set service dhcpv6-server shared-network-name NET_NSW01_DMZ_6 interface br0.20

# WIFI
set service dhcpv6-server shared-network-name NET_NSW01_WIFI_6 option domain-search 'wifi.nsw01.sigaint.au'
set service dhcpv6-server shared-network-name NET_NSW01_WIFI_6 subnet 2404:e80:4b6f:0::/64 subnet-id '13'
set service dhcpv6-server shared-network-name NET_NSW01_WIFI_6 interface br0.13

# Hosting
set service dhcpv6-server shared-network-name NET_NSW01_HOSTING_6 option domain-search 'hosting.nsw01.sigaint.au'
set service dhcpv6-server shared-network-name NET_NSW01_HOSTING_6 subnet 2404:e80:4b6f:5::/64 subnet-id '14'
set service dhcpv6-server shared-network-name NET_NSW01_HOSTING_6 interface br0.14

# VMNET
set service dhcpv6-server shared-network-name NET_NSW01_VMNET_6 option domain-search 'vmnet.nsw01.sigaint.au'
set service dhcpv6-server shared-network-name NET_NSW01_VMNET_6 subnet 2404:e80:4b6f:6::/64 subnet-id '21'
set service dhcpv6-server shared-network-name NET_NSW01_VMNET_6 interface br0.21
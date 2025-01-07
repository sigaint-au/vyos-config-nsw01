#!/bin/vbash

#----------------------------------------------------------
# Name:     NET_NSW01_MGMT
# Network:  10.120.10.1
# VLAN:     10
# Domain:   mgmt.nsw01.sigaint.au
#
#----------------------------------------------------------

set service dhcp-server shared-network-name NET_NSW01_MGMT option domain-name 'mgmt.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_MGMT option name-server '10.120.10.1'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 option default-router '10.120.10.1'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 start '10.120.10.10'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 stop '10.120.10.100'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 subnet-id '1'

## Static Mapping
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 ip-address '10.120.10.10'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 mac '74:e6:e2:fa:70:06'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 ip-address '10.120.10.11'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 mac '58:8a:5a:e7:4a:c2'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 ip-address '10.120.10.12'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 mac '84:7b:eb:d9:0d:c2'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 ip-address '10.120.10.13'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 mac '84:7b:eb:d9:0d:bc'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5m ip-address '10.120.10.14'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5m mac '7c:d3:0a:59:3f:95'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5k ip-address '10.120.10.15'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5k mac '38:68:dd:05:7e:dd'

# DMZ VLAN
set service dhcp-server shared-network-name NET_NSW01_DMZ option domain-name 'dmz.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_DMZ option name-server '10.120.20.1'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 option default-router '10.120.20.1'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 start '10.120.20.10'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 stop '10.120.20.100'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 subnet-id '3'

# OpenShift Bare Metal VLAN
set service dhcp-server shared-network-name NET_NSW01_HOSTING option domain-name 'ocp.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '10.120.14.1'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 option default-router '10.120.14.1'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 start '10.120.14.100'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 stop '10.120.14.200'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 subnet-id '4'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-01 ip-address '10.120.14.11'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-01 mac '44:a8:42:0a:5e:e7'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-02 ip-address '10.120.14.12'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-02 mac '80:18:44:ec:23:e6'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-03 ip-address '10.120.14.13'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-03 mac '18:66:da:ef:6d:8a'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-04 ip-address '10.120.14.14'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-04 mac '18:66:da:ef:7d:aa'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-05 ip-address '10.120.14.15'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-05 mac '7c:d3:0a:59:3f:90'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-06 ip-address '10.120.14.16'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-node-06 mac '38:68:dd:05:7e:d8'

# Security VLAN
set service dhcp-server shared-network-name NET_NSW01_SECURITY option domain-name 'security.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_SECURITY option name-server '10.120.12.1'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 option default-router '10.120.12.1'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 range 0 start '10.120.12.10'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 range 0 stop '10.120.12.100'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 subnet-id '2'

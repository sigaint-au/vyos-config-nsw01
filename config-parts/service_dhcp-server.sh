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
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 start '10.120.10.100'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 stop '10.120.10.200'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 subnet-id '10'

# UniFi Trash
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-console ip-address '10.120.10.10'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-console mac '70:a7:41:f7:bd:5b'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-ac-lr-01 ip-address '10.120.10.15'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-ac-lr-01 mac 'fc:ec:da:f0:52:b3'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-01 ip-address '10.120.10.20'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-01 mac 'ac:8b:a9:af:42:d3'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-02 ip-address '10.120.10.21'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-02 mac 'ac:8b:a9:af:42:f6'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-03 ip-address '10.120.10.22'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-flex5-03 mac 'ac:8b:a9:af:43:24'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw24-01 ip-address '10.120.10.23'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw24-01 mac 'd8:b3:70:2a:6d:61'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw48poe-01 ip-address '10.120.10.24'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw48poe-01 mac 'b4:fb:e4:b4:87:32'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw15poe-01 ip-address '10.120.10.25'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping unifi-sw15poe-01 mac '74:83:c2:07:b1:0c'

# Super Micro

# (supermicro-c6c0.mgmt.sigaint.au)
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping supermicro-c6c0 ip-address '10.120.10.30'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping supermicro-c6c0 mac '00:25:90:f6:c6:c0'

# Forcepoint
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-53f46v2 ip-address '10.120.10.49'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-53f46v2 mac '6c:2b:59:7d:3b:c3'

# Nodes iDRAC and XClarity
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 ip-address '10.120.10.50'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 mac '74:e6:e2:fa:70:06'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 ip-address '10.120.10.51'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 mac '58:8a:5a:e7:4a:c2'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 ip-address '10.120.10.52'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 mac '84:7b:eb:d9:0d:c2'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 ip-address '10.120.10.53'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 mac '84:7b:eb:d9:0d:bc'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5m ip-address '10.120.10.54'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5m mac '7c:d3:0a:59:3f:95'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5k ip-address '10.120.10.55'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping xcc-7x02-j300cw5k mac '38:68:dd:05:7e:dd'

#----------------------------------------------------------
# Name:     NET_NSW01_DMZ
# Network:  10.120.20.1
# VLAN:     20
# Domain:   dmz.nsw01.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_DMZ option domain-name 'dmz.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_DMZ option name-server '10.120.20.1'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 option default-router '10.120.20.1'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 start '10.120.20.100'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 stop '10.120.20.200'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 subnet-id '20'

#----------------------------------------------------------
# Name:     NET_NSW01_PROTECTED
# Network:  10.120.11.1
# VLAN:     11
# Domain:   protected.nsw01.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_PROTECTED option domain-name 'protected.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED option name-server '10.120.11.1'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED subnet 10.120.11.0/24 option default-router '10.120.11.1'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED subnet 10.120.11.0/24 range 0 start '10.120.11.100'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED subnet 10.120.11.0/24 range 0 stop '10.120.11.200'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED subnet 10.120.11.0/24 subnet-id '11'

#----------------------------------------------------------
# Name:     NET_NSW01_HOSTING
# Network:  10.120.14.1
# VLAN:     14
# Domain:   hosting.nsw01.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_HOSTING
set service dhcp-server shared-network-name NET_NSW01_HOSTING option domain-name 'ocp.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '45.90.28.189'
set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '45.90.30.189'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 option default-router '10.120.14.1'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 start '10.120.14.100'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 stop '10.120.14.200'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 subnet-id '14'


set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-infra-01 ip-address '10.120.14.10'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-infra-01 mac 'b0:26:28:1d:78:4f'

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

#----------------------------------------------------------
# Name:     NET_NSW01_SECURITY
# Network:  10.120.12.1
# VLAN:     13
# Domain:   security.nsw01.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_SECURITY option domain-name 'security.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_SECURITY option name-server '10.120.12.1'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 option default-router '10.120.12.1'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 range 0 start '10.120.12.100'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 range 0 stop '10.120.12.200'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 subnet-id '12'

# Security Cameras for NSW01
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-62-e1 ip-address '10.120.12.101'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-62-e1 mac '9c:8e:cd:2d:62:e1'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-1d-b8 ip-address '10.120.12.102'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-1d-b8 mac '9c:8e:cd:2d:1d:b8'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-68-7d ip-address '10.120.12.103'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-68-7d mac '9c:8e:cd:2d:68:7d'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-64-93 ip-address '10.120.12.104'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-64-93 mac '9c:8e:cd:2d:64:93'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-4c ip-address '10.120.12.105'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-4c mac '9c:8e:cd:2d:65:4c'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-23 ip-address '10.120.12.106'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-23 mac '9c:8e:cd:2d:65:23'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-4b ip-address '10.120.12.107'
set service dhcp-server shared-network-name NET_NSW01_SECURITY subnet 10.120.12.0/24 static-mapping cam-65-4b mac '9c:8e:cd:2d:65:4b'

#----------------------------------------------------------
# Name:     NET_NSW01_CORP
# Network:  10.120.13.1
# VLAN:     10
# Domain:   wifi.nsw01.sigaint.au
#
#----------------------------------------------------------

# We set the nameservers here directly to avoid having the router forward
# the dns traffic leaking it over eth0.
#
set service dhcp-server shared-network-name NET_NSW01_WIFI option domain-name 'corp.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_WIFI option name-server '45.90.28.189'
set service dhcp-server shared-network-name NET_NSW01_WIFI option name-server '45.90.30.189'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 option default-router '10.120.13.1'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 range 0 start '10.120.13.100'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 range 0 stop '10.120.13.200'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 subnet-id '13'

# Synology
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping lan-nas-01 ip-address '10.120.13.11'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping lan-nas-01 mac '90:09:D0:74:C6:71'

# QNAP
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping lan-nas-02 ip-address '10.120.13.12'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping lan-nas-02 mac '24:5E:BE:18:37:11'

#  Plex
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping plex ip-address '10.120.13.10'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping plex mac '1C:69:7A:06:4F:6D'

#----------------------------------------------------------
# Name:     NET_NSW01_VMNET
# Network:  10.120.21.1
# VLAN:     21
# Domain:   vmnet.nsw01.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_VMNET option domain-name 'vmnet.nsw01.sigaint.au'
set service dhcp-server shared-network-name NET_NSW01_VMNET option name-server '10.120.21.1'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 option default-router '10.120.21.1'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 range 0 start '10.120.21.100'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 range 0 stop '10.120.21.200'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 subnet-id '21'


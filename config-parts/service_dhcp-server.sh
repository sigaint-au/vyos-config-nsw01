#!/bin/vbash

#----------------------------------------------------------
# Name:     NET_NSW01_MGMT
# Network:  10.120.10.1
# VLAN:     10
# Domain:   mgmt.nsw01.sigaint.au
#
#----------------------------------------------------------

set service dhcp-server shared-network-name NET_NSW01_MGMT option name-server '76.76.2.136'
set service dhcp-server shared-network-name NET_NSW01_MGMT option name-server '76.76.10.136'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 option default-router '10.120.10.1'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 start '10.120.10.100'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 range 0 stop '10.120.10.200'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 subnet-id '10'

# ==========================
# Unifi
# ==========================
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

# ==========================
# Super Micro Router
# ==========================
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping supermicro-c6c0 ip-address '10.120.10.30'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping supermicro-c6c0 mac '00:25:90:f6:c6:c0'

# ==========================
# Dell iDRAC DHCP
# ==========================
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-fmm0wv2 ip-address '10.120.10.49'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-fmm0wv2 mac '6c:2b:59:86:e6:9b'

set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 ip-address '10.120.10.50'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-6BFVY42 mac '74:e6:e2:fa:70:06'

set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 ip-address '10.120.10.51'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-8505qm2 mac '58:8a:5a:e7:4a:c2'

set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 ip-address '10.120.10.52'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qk2vg2 mac '84:7b:eb:d9:0d:c2'

set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 ip-address '10.120.10.53'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-9qd4vg2 mac '84:7b:eb:d9:0d:bc'

# Blade Node TR idrac-bt54jk2
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt54jk2 ip-address '10.120.10.61'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt54jk2 mac '7C:D3:0A:D7:E0:0C'

# Blade Node TR idrac-bt55jk2
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt55jk2 ip-address '10.120.10.62'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt55jk2 mac '7C:D3:0A:D7:DE:1A'

# Blade Node BR idrac-bt52jk2
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt52jk2 ip-address '10.120.10.63'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt52jk2 mac '7c:d3:0a:d7:e1:20'

# Blade Node BL idrac-bt53jk2
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt53jk2 ip-address '10.120.10.64'
set service dhcp-server shared-network-name NET_NSW01_MGMT subnet 10.120.10.0/24 static-mapping idrac-bt53jk2 mac '7c:d3:0a:d7:d9:9a'

#----------------------------------------------------------
# Name:     NET_NSW01_DMZ
# Network:  10.120.20.1
# VLAN:     20
# Domain:   dmz.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_DMZ option name-server '76.76.2.136'
set service dhcp-server shared-network-name NET_NSW01_DMZ option name-server '76.76.10.136'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 option default-router '10.120.20.1'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 start '10.120.20.100'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 range 0 stop '10.120.20.200'
set service dhcp-server shared-network-name NET_NSW01_DMZ subnet 10.120.20.0/24 subnet-id '20'

#----------------------------------------------------------
# Name:     NET_NSW01_PROTECTED
# Network:  10.120.11.1
# VLAN:     11
# Domain:   secure.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_PROTECTED option name-server '76.76.2.136'
set service dhcp-server shared-network-name NET_NSW01_PROTECTED option name-server '76.76.10.136'
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
#set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '76.76.2.136'
#set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '76.76.10.136'
set service dhcp-server shared-network-name NET_NSW01_HOSTING option name-server '10.120.14.1'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 option default-router '10.120.14.1'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 start '10.120.14.100'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 range 0 stop '10.120.14.200'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 subnet-id '14'

# === UEFI PXE chainload ===
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 option tftp-server-name 10.120.14.1
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 option bootfile-name ipxe.efi

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping rancher ip-address '10.120.14.6'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping rancher mac 'ee:ea:7f:f0:fb:b5'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-sno-e9ad ip-address '10.120.14.10'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping lan-sno-e9ad mac '2c:ea:7f:40:4b:b9'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-ab56 ip-address '10.120.14.11'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-ab56 mac '44:a8:42:0a:5e:e7'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-527f ip-address '10.120.14.12'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-527f mac '80:18:44:ec:23:e6'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-49f4 ip-address '10.120.14.13'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-49f4 mac '18:66:da:ef:6d:8a'

## Blade System
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-4ef0 ip-address '10.120.14.21'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-4ef0 mac '7c:d3:0a:d7:e0:08'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-2b49 ip-address '10.120.14.22'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-2b49 mac '7c:d3:0a:d7:de:16'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-a3c7 ip-address '10.120.14.23'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-a3c7  mac '7c:d3:0a:d7:e1:1c'

set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-87f3 ip-address '10.120.14.24'
set service dhcp-server shared-network-name NET_NSW01_HOSTING subnet 10.120.14.0/24 static-mapping harvester-node-87f3 mac '7c:d3:0a:d7:d9:96'

#----------------------------------------------------------
# Name:     NET_NSW01_SECURITY
# Network:  10.120.12.1
# VLAN:     13
# Domain:   security.sigaint.au
#
#----------------------------------------------------------
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

set service dhcp-server shared-network-name NET_NSW01_WIFI option name-server '76.76.2.136'
set service dhcp-server shared-network-name NET_NSW01_WIFI option name-server '76.76.10.136'
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

#  Transmission
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping plex ip-address '10.120.13.10'
set service dhcp-server shared-network-name NET_NSW01_WIFI subnet 10.120.13.0/24 static-mapping plex mac '1C:69:7A:06:4F:6D'

#----------------------------------------------------------
# Name:     NET_NSW01_VMNET
# Network:  10.120.21.1
# VLAN:     21
# Domain:   vmnet.sigaint.au
#
#----------------------------------------------------------
set service dhcp-server shared-network-name NET_NSW01_VMNET option name-server '76.76.2.136'
set service dhcp-server shared-network-name NET_NSW01_VMNET option name-server '76.76.10.136'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 option default-router '10.120.21.1'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 range 0 start '10.120.21.100'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 range 0 stop '10.120.21.200'
set service dhcp-server shared-network-name NET_NSW01_VMNET subnet 10.120.21.0/24 subnet-id '21'


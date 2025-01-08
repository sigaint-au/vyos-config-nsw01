#/bin/vbash

# Set MAC Addresses
set interfaces ethernet eth0 hw-id '00:0d:b9:5e:41:34'
set interfaces ethernet eth1 hw-id '00:0d:b9:5e:41:35'
set interfaces ethernet eth2 hw-id '00:0d:b9:5e:41:36'
set interfaces ethernet eth3 hw-id '00:0d:b9:5e:41:37'

# Offload
set interfaces ethernet eth0 offload gro
set interfaces ethernet eth0 offload gso
set interfaces ethernet eth0 offload sg
set interfaces ethernet eth0 offload tso

set interfaces ethernet eth1 offload gro
set interfaces ethernet eth1 offload gso
set interfaces ethernet eth1 offload sg
set interfaces ethernet eth1 offload tso

set interfaces ethernet eth2 offload gro
set interfaces ethernet eth2 offload gso
set interfaces ethernet eth2 offload sg
set interfaces ethernet eth2 offload tso

set interfaces ethernet eth3 offload gro
set interfaces ethernet eth3 offload gso
set interfaces ethernet eth3 offload sg
set interfaces ethernet eth3 offload tso

# Interfaces for WAN
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 address 'dhcpv6'
set interfaces ethernet eth0 description 'NET_NSW01_WAN'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.13 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.13 sla-id '0'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.20 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.20 sla-id '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 length '48'
set interfaces ethernet eth0 dhcpv6-options rapid-commit
set interfaces ethernet eth0 ipv6 address autoconf

# Configure bridge interface and VLANs.
set interfaces bridge br0 enable-vlan
set interfaces bridge br0 member interface eth3 allowed-vlan '10-50'
set interfaces bridge br0 member interface eth4 allowed-vlan '10-50'
set interfaces bridge br0 stp
set interfaces bridge br0 vif 10 address '10.120.10.1/24'
set interfaces bridge br0 vif 10 description 'NET_NSW01_ADMIN'
set interfaces bridge br0 vif 11 address '10.120.11.1/27'
set interfaces bridge br0 vif 11 description 'NET_NSW01_PROTECTED'
set interfaces bridge br0 vif 12 address '10.120.12.1/24'
set interfaces bridge br0 vif 12 description 'NET_NSW01_SECURITY'
set interfaces bridge br0 vif 13 address '10.120.13.1/24'
set interfaces bridge br0 vif 13 description 'NET_NSW01_WIFI'
set interfaces bridge br0 vif 14 address '10.120.14.1/24'
set interfaces bridge br0 vif 14 description 'NET_NSW01_HOSTING'
set interfaces bridge br0 vif 20 address '10.120.20.1/24'
set interfaces bridge br0 vif 20 description 'NET_NSW01_DMZ'
set interfaces bridge br0 vif 21 address '10.120.21.1/24'
set interfaces bridge br0 vif 21 description 'NET_NSW01_VMNET'

# WireGuard configuration for ProtonVPN CH600
set interfaces wireguard wg600 address '10.2.0.2/32'
set interfaces wireguard wg600 description 'ProtonVPN_CH600'
set interfaces wireguard wg600 peer ProtonVPN_CH600 address '79.127.184.216'
set interfaces wireguard wg600 peer ProtonVPN_CH600 allowed-ips '0.0.0.0/0'
set interfaces wireguard wg600 peer ProtonVPN_CH600 persistent-keepalive '15'
set interfaces wireguard wg600 peer ProtonVPN_CH600 port '51820'
set interfaces wireguard wg600 peer ProtonVPN_CH600 public-key 'Ii6hAbnu84wZ8NzVt5+ylO4FnX+ANrKNzpFOSYq9dks='
set interfaces wireguard wg600 private-key "$secret_wireguard_wg600_private_key"
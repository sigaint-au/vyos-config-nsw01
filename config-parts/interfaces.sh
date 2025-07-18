#/bin/vbash

# Set MAC Addresses
set interfaces ethernet eth0 hw-id "$host_interfaces_ethernet_eth0_mac"
set interfaces ethernet eth1 hw-id "$host_interfaces_ethernet_eth1_mac"
set interfaces ethernet eth2 hw-id "$host_interfaces_ethernet_eth2_mac"
set interfaces ethernet eth3 hw-id "$host_interfaces_ethernet_eth3_mac"

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

set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.10 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.10 sla-id '2'

set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.11 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.11 sla-id '3'

set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.12 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.12 sla-id '4'

set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.14 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.14 sla-id '5'

set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.21 address '1'
set interfaces ethernet eth0 dhcpv6-options pd 0 interface br0.21 sla-id '6'

set interfaces ethernet eth0 dhcpv6-options pd 0 length '48'
set interfaces ethernet eth0 dhcpv6-options rapid-commit
set interfaces ethernet eth0 ipv6 address autoconf

# Proxy arp for Metallb
set interfaces bridge br0 vif 13 ip enable-proxy-arp
set interfaces bridge br0 vif 14 ip enable-proxy-arp
set interfaces bridge br0 vif 20 ip enable-proxy-arp
set interfaces bridge br0 vif 21 ip enable-proxy-arp


# Configure bridge interface and VLANs.
set interfaces bridge br0 enable-vlan
set interfaces bridge br0 member interface eth1 allowed-vlan '10-50'
set interfaces bridge br0 member interface eth2 allowed-vlan '10-50'
set interfaces bridge br0 member interface eth3 allowed-vlan '10-50'
set interfaces bridge br0 stp
set interfaces bridge br0 vif 10 address '10.120.10.1/24'
set interfaces bridge br0 vif 10 description 'NET_NSW01_MGMT'
set interfaces bridge br0 vif 11 address '10.120.11.1/24'
set interfaces bridge br0 vif 11 description 'NET_NSW01_PROTECTED'
set interfaces bridge br0 vif 12 address '10.120.12.1/24'
set interfaces bridge br0 vif 12 description 'NET_NSW01_SECURITY'
set interfaces bridge br0 vif 13 address '10.120.13.1/24'
set interfaces bridge br0 vif 13 description 'NET_NSW01_CORP'
set interfaces bridge br0 vif 14 address '10.120.14.1/24'
set interfaces bridge br0 vif 14 description 'NET_NSW01_HOSTING'
set interfaces bridge br0 vif 20 address '10.120.20.1/24'
set interfaces bridge br0 vif 20 description 'NET_NSW01_DMZ'
set interfaces bridge br0 vif 21 address '10.120.21.1/24'
set interfaces bridge br0 vif 21 description 'NET_NSW01_VMNET'

# VPN for Newcastle
set interfaces wireguard wg600 address '172.16.8.1/31'
set interfaces wireguard wg600 description 'Newcastle VPN Tunnel'
set interfaces wireguard wg600 port 51820
set interfaces wireguard wg600 peer NSW02_WG_1 address '58.178.25.160'
set interfaces wireguard wg600 peer NSW02_WG_1 allowed-ips '10.130.0.0/16'
set interfaces wireguard wg600 peer NSW02_WG_1 allowed-ips '172.16.8.2/32'
set interfaces wireguard wg600 peer NSW02_WG_1 persistent-keepalive '25'
set interfaces wireguard wg600 peer NSW02_WG_1 port '51820'
set interfaces wireguard wg600 peer NSW02_WG_1 preshared-key "$secret_wireguard_wg600_psk"
set interfaces wireguard wg600 peer NSW02_WG_1 public-key "$secret_wireguard_wg600_public_key"
set interfaces wireguard wg600 private-key "$secret_wireguard_wg600_private_key"

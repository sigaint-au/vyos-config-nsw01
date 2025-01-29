#!/bin/vbash

# LOCAL -> WAN
set firewall ipv6 name LOCAL-WAN-6 default-action 'reject'
set firewall ipv6 name LOCAL-WAN-6 default-log
# DHCP
set firewall ipv6 name LOCAL-WAN-6 rule 110 protocol 'icmpv6'
set firewall ipv6 name LOCAL-WAN-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-WAN-6 rule 110 description 'ICMPv6'
# WireGuard
set firewall ipv6 name LOCAL-WAN-6 rule 120 action 'accept'
set firewall ipv6 name LOCAL-WAN-6 rule 120 description 'WireGuard Peers'
set firewall ipv6 name LOCAL-WAN-6 rule 120 destination group address-group 'WG_PEERS_6'
set firewall ipv6 name LOCAL-WAN-6 rule 120 destination port '51820'
set firewall ipv6 name LOCAL-WAN-6 rule 120 protocol 'udp'
# Next DNS
set firewall ipv6 name LOCAL-WAN-6 rule 130 action 'accept'
set firewall ipv6 name LOCAL-WAN-6 rule 130 description 'DNS Servers'
set firewall ipv6 name LOCAL-WAN-6 rule 130 destination group address-group 'DNS_SERVERS_6'
set firewall ipv6 name LOCAL-WAN-6 rule 130 destination port '53'
set firewall ipv6 name LOCAL-WAN-6 rule 130 protocol 'udp'
# Google NTP Servers
set firewall ipv6 name LOCAL-WAN-6 rule 140 action 'accept'
set firewall ipv6 name LOCAL-WAN-6 rule 140 description 'NTP Servers'
set firewall ipv6 name LOCAL-WAN-6 rule 140 destination port '123'
set firewall ipv6 name LOCAL-WAN-6 rule 140 destination group address-group 'NTP_SERVERS_6'
set firewall ipv6 name LOCAL-WAN-6 rule 140 protocol 'udp'


# WAN -> LOCAL
set firewall ipv6 name WAN-LOCAL-6 default-action 'reject'
set firewall ipv6 name WAN-LOCAL-6 default-log
set firewall ipv6 name WAN-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 100 state 'established'
set firewall ipv6 name WAN-LOCAL-6 rule 100 state 'related'
set firewall ipv6 name WAN-LOCAL-6 rule 120 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 120 description 'Wireguard VPN'
set firewall ipv6 name WAN-LOCAL-6 rule 120 destination port '51820'
set firewall ipv6 name WAN-LOCAL-6 rule 120 protocol 'udp'
set firewall ipv6 name WAN-LOCAL-6 rule 130 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 130 protocol 'icmpv6'
set firewall ipv6 name WAN-LOCAL-6 rule 140 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 140 description 'DHCPv6 Replies'
set firewall ipv6 name WAN-LOCAL-6 rule 140 destination port '546'
set firewall ipv6 name WAN-LOCAL-6 rule 140 protocol 'udp'
set firewall ipv6 name WAN-LOCAL-6 rule 140 source port '547'

# WIFI -> LOCAL
set firewall ipv6 name WIFI-LOCAL-6 default-action 'reject'
set firewall ipv6 name WIFI-LOCAL-6 default-log
set firewall ipv6 name WIFI-LOCAL-6 description 'Wifi to LOCAL IPv6'
set firewall ipv6 name WIFI-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name WIFI-LOCAL-6 rule 100 protocol 'icmpv6'
set firewall ipv6 name WIFI-LOCAL-6 rule 110 action 'accept'
set firewall ipv6 name WIFI-LOCAL-6 rule 110 description 'DHCPv6 Replies'
set firewall ipv6 name WIFI-LOCAL-6 rule 110 destination port '546'
set firewall ipv6 name WIFI-LOCAL-6 rule 110 protocol 'udp'
set firewall ipv6 name WIFI-LOCAL-6 rule 110 source port '547'

# WIFI -> WAN
#
# We dont let any packets traverse to the WAN from wifi
# because we route it via policy through the VPN.
#
set firewall ipv6 name WIFI-WAN-6 default-action 'reject'
set firewall ipv6 name WIFI-WAN-6 default-log
set firewall ipv6 name WIFI-WAN-6 description 'WIFI to WAN IPv6'

# WIFI -> PROTON_VPN
#
set firewall ipv6 name WIFI-PROTON_VPN-6 default-action 'reject'
set firewall ipv6 name WIFI-PROTON_VPN-6 default-log
set firewall ipv6 name WIFI-PROTON_VPN-6 description 'WIFI to PROTON IPv6'
set firewall ipv6 name WIFI-PROTON_VPN-6 rule 100 action 'accept'

# PROTON_VPN -> WIFI
#
set firewall ipv6 name PROTON_VPN-WIFI-6 default-action 'reject'
set firewall ipv6 name PROTON_VPN-WIFI-6 default-log
set firewall ipv6 name PROTON_VPN-WIFI-6 description 'PROTON to WIFI IPv6'
set firewall ipv6 name PROTON_VPN-WIFI-6 rule 100 action 'accept'


# ADMIN -> PROTON_VPN
#
set firewall ipv6 name ADMIN-PROTON_VPN-6 default-action 'reject'
set firewall ipv6 name ADMIN-PROTON_VPN-6 default-log
set firewall ipv6 name ADMIN-PROTON_VPN-6 description 'ADMIN to PROTON IPv6'
set firewall ipv6 name ADMIN-PROTON_VPN-6 rule 100 action 'accept'

# PROTON_VPN -> ADMIN
#
set firewall ipv6 name PROTON_VPN-ADMIN-6 default-action 'reject'
set firewall ipv6 name PROTON_VPN-ADMIN-6 default-log
set firewall ipv6 name PROTON_VPN-ADMIN-6 description 'PROTON to ADMIN IPv6'
set firewall ipv6 name PROTON_VPN-ADMIN-6 rule 100 action 'accept'

# WAN -> WIFI

# We dont let any packets traverse to the WAN from wifi
# because we route it via policy through the VPN.
#
set firewall ipv6 name WAN-WIFI-6 default-action 'reject'
set firewall ipv6 name WAN-WIFI-6 default-log
set firewall ipv6 name WAN-WIFI-6 description 'WAN to WIFI IPv6'

# LOCAL -> WIFI
set firewall ipv6 name LOCAL-WIFI-6 default-action 'drop'
set firewall ipv6 name LOCAL-WIFI-6 default-log
set firewall ipv6 name LOCAL-WIFI-6 description 'LOCAL to WIFI IPv6'
set firewall ipv6 name LOCAL-WIFI-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-WIFI-6 rule 110 state 'established'
set firewall ipv6 name LOCAL-WIFI-6 rule 110 state 'related'
set firewall ipv6 name LOCAL-WIFI-6 rule 120 action 'drop'
set firewall ipv6 name LOCAL-WIFI-6 rule 120 state 'invalid'
set firewall ipv6 name LOCAL-WIFI-6 rule 130 action 'accept'
set firewall ipv6 name LOCAL-WIFI-6 rule 130 protocol 'icmpv6'

#!/bin/vbash

# LOCAL -> WAN
set firewall ipv6 name LOCAL-WAN-6 default-action 'reject'
set firewall ipv6 name LOCAL-WAN-6 default-log
set firewall ipv6 name LOCAL-WAN-6 rule 100 action 'accept'

# WAN -> LOCAL
set firewall ipv6 name WAN-LOCAL-6 default-action 'reject'
set firewall ipv6 name WAN-LOCAL-6 default-log
set firewall ipv6 name WAN-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 100 state 'established'
set firewall ipv6 name WAN-LOCAL-6 rule 100 state 'related'
set firewall ipv6 name WAN-LOCAL-6 rule 110 action 'accept'
set firewall ipv6 name WAN-LOCAL-6 rule 110 description 'SSH'
set firewall ipv6 name WAN-LOCAL-6 rule 110 destination port '22'
set firewall ipv6 name WAN-LOCAL-6 rule 110 protocol 'tcp'
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

#!/bin/vbash

# LOCAL -> WAN
set firewall ipv6 name LOCAL-WAN-6 default-action 'accept'
set firewall ipv6 name LOCAL-WAN-6 default-log
# DHCP
set firewall ipv6 name LOCAL-WAN-6 rule 110 protocol 'icmpv6'
set firewall ipv6 name LOCAL-WAN-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-WAN-6 rule 110 description 'ICMPv6'
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
set firewall ipv6 name WIFI-WAN-6 default-action 'reject'
set firewall ipv6 name WIFI-WAN-6 default-log
set firewall ipv6 name WIFI-WAN-6 description 'WIFI to WAN IPv6'
set firewall ipv6 name WIFI-WAN-6 rule 100 action 'accept'

# WAN -> WIFI
set firewall ipv6 name WAN-WIFI-6 default-action 'drop'
set firewall ipv6 name WAN-WIFI-6 default-log
set firewall ipv6 name WAN-WIFI-6 description 'WAN to WIFI IPv6'
set firewall ipv6 name WAN-WIFI-6 rule 110 action 'accept'
set firewall ipv6 name WAN-WIFI-6 rule 110 state 'established'
set firewall ipv6 name WAN-WIFI-6 rule 110 state 'related'
set firewall ipv6 name WAN-WIFI-6 rule 120 action 'drop'
set firewall ipv6 name WAN-WIFI-6 rule 120 state 'invalid'

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

# LOCAL -> VMNET
set firewall ipv6 name LOCAL-VMNET-6 default-action 'drop'
set firewall ipv6 name LOCAL-VMNET-6 default-log
set firewall ipv6 name LOCAL-VMNET-6 description 'LOCAL to VMNET IPv6'
set firewall ipv6 name LOCAL-VMNET-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-VMNET-6 rule 110 state 'established'
set firewall ipv6 name LOCAL-VMNET-6 rule 110 state 'related'
set firewall ipv6 name LOCAL-VMNET-6 rule 120 action 'drop'
set firewall ipv6 name LOCAL-VMNET-6 rule 120 state 'invalid'
set firewall ipv6 name LOCAL-VMNET-6 rule 130 action 'accept'
set firewall ipv6 name LOCAL-VMNET-6 rule 130 protocol 'icmpv6'

# LOCAL -> HOSTING
set firewall ipv6 name LOCAL-HOSTING-6 default-action 'drop'
set firewall ipv6 name LOCAL-HOSTING-6 default-log
set firewall ipv6 name LOCAL-HOSTING-6 description 'LOCAL to HOSTING IPv6'
set firewall ipv6 name LOCAL-HOSTING-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-HOSTING-6 rule 110 state 'established'
set firewall ipv6 name LOCAL-HOSTING-6 rule 110 state 'related'
set firewall ipv6 name LOCAL-HOSTING-6 rule 120 action 'drop'
set firewall ipv6 name LOCAL-HOSTING-6 rule 120 state 'invalid'
set firewall ipv6 name LOCAL-HOSTING-6 rule 130 action 'accept'
set firewall ipv6 name LOCAL-HOSTING-6 rule 130 protocol 'icmpv6'

# HOSTING -> LOCAL
set firewall ipv6 name HOSTING-LOCAL-6 default-action 'reject'
set firewall ipv6 name HOSTING-LOCAL-6 default-log
set firewall ipv6 name HOSTING-LOCAL-6 description 'HOSTING to LOCAL IPv6'
set firewall ipv6 name HOSTING-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name HOSTING-LOCAL-6 rule 100 protocol 'icmpv6'
set firewall ipv6 name HOSTING-LOCAL-6 rule 110 action 'accept'
set firewall ipv6 name HOSTING-LOCAL-6 rule 110 description 'DHCPv6 Replies'
set firewall ipv6 name HOSTING-LOCAL-6 rule 110 destination port '546'
set firewall ipv6 name HOSTING-LOCAL-6 rule 110 protocol 'udp'
set firewall ipv6 name HOSTING-LOCAL-6 rule 110 source port '547'

# HOSTING -> WAN
set firewall ipv6 name HOSTING-WAN-6 default-action 'reject'
set firewall ipv6 name HOSTING-WAN-6 default-log
set firewall ipv6 name HOSTING-WAN-6 description 'HOSTING to WAN IPv6'
set firewall ipv6 name HOSTING-WAN-6 rule 100 action 'accept'

# WAN -> HOSTING
set firewall ipv6 name WAN-HOSTING-6 default-action 'drop'
set firewall ipv6 name WAN-HOSTING-6 default-log
set firewall ipv6 name WAN-HOSTING-6 description 'WAN to HOSTING IPv6'
set firewall ipv6 name WAN-HOSTING-6 rule 110 action 'accept'
set firewall ipv6 name WAN-HOSTING-6 rule 110 state 'established'
set firewall ipv6 name WAN-HOSTING-6 rule 110 state 'related'
set firewall ipv6 name WAN-HOSTING-6 rule 120 action 'drop'
set firewall ipv6 name WAN-HOSTING-6 rule 120 state 'invalid'

# VMNET -> LOCAL
set firewall ipv6 name VMNET-LOCAL-6 default-action 'reject'
set firewall ipv6 name VMNET-LOCAL-6 default-log
set firewall ipv6 name VMNET-LOCAL-6 description 'VMNET to LOCAL IPv6'
set firewall ipv6 name VMNET-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name VMNET-LOCAL-6 rule 100 protocol 'icmpv6'
set firewall ipv6 name VMNET-LOCAL-6 rule 110 action 'accept'
set firewall ipv6 name VMNET-LOCAL-6 rule 110 description 'DHCPv6 Replies'
set firewall ipv6 name VMNET-LOCAL-6 rule 110 destination port '546'
set firewall ipv6 name VMNET-LOCAL-6 rule 110 protocol 'udp'
set firewall ipv6 name VMNET-LOCAL-6 rule 110 source port '547'

# VMNET -> WAN
set firewall ipv6 name VMNET-WAN-6 default-action 'reject'
set firewall ipv6 name VMNET-WAN-6 default-log
set firewall ipv6 name VMNET-WAN-6 description 'VMNET to WAN IPv6'
set firewall ipv6 name VMNET-WAN-6 rule 100 action 'accept'

# WAN -> VMNET
set firewall ipv6 name WAN-VMNET-6 default-action 'drop'
set firewall ipv6 name WAN-VMNET-6 default-log
set firewall ipv6 name WAN-VMNET-6 description 'WAN to VMNET IPv6'
set firewall ipv6 name WAN-VMNET-6 rule 110 action 'accept'
set firewall ipv6 name WAN-VMNET-6 rule 110 state 'established'
set firewall ipv6 name WAN-VMNET-6 rule 110 state 'related'
set firewall ipv6 name WAN-VMNET-6 rule 120 action 'drop'
set firewall ipv6 name WAN-VMNET-6 rule 120 state 'invalid'

# DMZ -> WAN
set firewall ipv6 name DMZ-WAN-6 default-action 'reject'
set firewall ipv6 name DMZ-WAN-6 default-log
set firewall ipv6 name DMZ-WAN-6 description 'DMZ to WAN IPv6'
set firewall ipv6 name DMZ-WAN-6 rule 100 action 'accept'

# WAN -> DMZ
set firewall ipv6 name WAN-DMZ-6 default-action 'drop'
set firewall ipv6 name WAN-DMZ-6 default-log
set firewall ipv6 name WAN-DMZ-6 description 'WAN to DMZ IPv6'
set firewall ipv6 name WAN-DMZ-6 rule 100 action 'accept'

# LOCAL -> DMZ
set firewall ipv6 name LOCAL-DMZ-6 default-action 'drop'
set firewall ipv6 name LOCAL-DMZ-6 default-log
set firewall ipv6 name LOCAL-DMZ-6 description 'LOCAL to DMZ IPv6'
set firewall ipv6 name LOCAL-DMZ-6 rule 110 action 'accept'
set firewall ipv6 name LOCAL-DMZ-6 rule 110 state 'established'
set firewall ipv6 name LOCAL-DMZ-6 rule 110 state 'related'
set firewall ipv6 name LOCAL-DMZ-6 rule 120 action 'drop'
set firewall ipv6 name LOCAL-DMZ-6 rule 120 state 'invalid'
set firewall ipv6 name LOCAL-DMZ-6 rule 130 action 'accept'
set firewall ipv6 name LOCAL-DMZ-6 rule 130 protocol 'icmpv6'

# DMZ -> LOCAL
set firewall ipv6 name DMZ-LOCAL-6 default-action 'reject'
set firewall ipv6 name DMZ-LOCAL-6 default-log
set firewall ipv6 name DMZ-LOCAL-6 description 'DMZ to LOCAL IPv6'
set firewall ipv6 name DMZ-LOCAL-6 rule 100 action 'accept'
set firewall ipv6 name DMZ-LOCAL-6 rule 100 protocol 'icmpv6'
set firewall ipv6 name DMZ-LOCAL-6 rule 110 action 'accept'
set firewall ipv6 name DMZ-LOCAL-6 rule 110 description 'DHCPv6 Replies'
set firewall ipv6 name DMZ-LOCAL-6 rule 110 destination port '546'
set firewall ipv6 name DMZ-LOCAL-6 rule 110 protocol 'udp'
set firewall ipv6 name DMZ-LOCAL-6 rule 110 source port '547'
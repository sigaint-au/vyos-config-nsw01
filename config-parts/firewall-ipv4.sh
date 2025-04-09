#!/bin/vbash

# Allow ping to all LOCAL interfaces
set firewall global-options all-ping enable

# WAN -> LOCAL
set firewall ipv4 name WAN-LOCAL default-action 'drop'
set firewall ipv4 name WAN-LOCAL default-log
set firewall ipv4 name WAN-LOCAL rule 100 action 'accept'
set firewall ipv4 name WAN-LOCAL rule 100 state 'established'
set firewall ipv4 name WAN-LOCAL rule 100 state 'related'
set firewall ipv4 name WAN-LOCAL rule 110 action 'accept'
set firewall ipv4 name WAN-LOCAL rule 110 description 'Wireguard VPN'
set firewall ipv4 name WAN-LOCAL rule 110 destination port '51820'
set firewall ipv4 name WAN-LOCAL rule 110 protocol 'udp'

# WAN -> WIFI
set firewall ipv4 name WAN-WIFI default-action 'reject'
set firewall ipv4 name WAN-WIFI default-log
set firewall ipv4 name WAN-WIFI rule 100 action 'accept'
set firewall ipv4 name WAN-WIFI rule 100 state 'established'
set firewall ipv4 name WAN-WIFI rule 100 state 'related'
set firewall ipv4 name WAN-WIFI rule 110 action 'reject'
set firewall ipv4 name WAN-WIFI rule 110 state 'invalid'

# ADMIN -> PROTECTED
set firewall ipv4 name ADMIN-PROTECTED default-action 'reject'
set firewall ipv4 name ADMIN-PROTECTED default-log
set firewall ipv4 name ADMIN-PROTECTED rule 100 action 'accept'
set firewall ipv4 name ADMIN-PROTECTED rule 100 state 'established'
set firewall ipv4 name ADMIN-PROTECTED rule 100 state 'related'
set firewall ipv4 name ADMIN-PROTECTED rule 110 action 'reject'
set firewall ipv4 name ADMIN-PROTECTED rule 110 state 'invalid'

# ADMIN -> LOCAL
set firewall ipv4 name ADMIN-LOCAL default-action 'reject'
set firewall ipv4 name ADMIN-LOCAL default-log
set firewall ipv4 name ADMIN-LOCAL rule 110 action 'accept'
set firewall ipv4 name ADMIN-LOCAL rule 110 description 'SSH'
set firewall ipv4 name ADMIN-LOCAL rule 110 destination port '22'
set firewall ipv4 name ADMIN-LOCAL rule 110 protocol 'tcp'

# LOCAL -> ADMIN
set firewall ipv4 name LOCAL-ADMIN default-action 'reject'
set firewall ipv4 name LOCAL-ADMIN  default-log
set firewall ipv4 name LOCAL-ADMIN rule 100 action 'accept'
set firewall ipv4 name LOCAL-ADMIN rule 100 state 'established'
set firewall ipv4 name LOCAL-ADMIN rule 100 state 'related'
set firewall ipv4 name LOCAL-ADMIN rule 110 action 'reject'
set firewall ipv4 name LOCAL-ADMIN rule 110 state 'invalid'
set firewall ipv4 name LOCAL-ADMIN rule 120 description 'Accept traffic to local services'
set firewall ipv4 name LOCAL-ADMIN rule 120 destination group port-group 'LOCAL_SERVICES'
set firewall ipv4 name LOCAL-ADMIN rule 120 protocol 'tcp_udp'
set firewall ipv4 name LOCAL-ADMIN rule 120 action 'accept'

##
# LOCAL -> WAN
#
set firewall ipv4 name LOCAL-WAN default-action 'reject'
set firewall ipv4 name LOCAL-WAN default-log
# DHCP
set firewall ipv4 name LOCAL-WAN rule 100 action 'accept'
set firewall ipv4 name LOCAL-WAN rule 100 description 'Allow DHCP'
set firewall ipv4 name LOCAL-WAN rule 140 destination port '68,67'
set firewall ipv4 name LOCAL-WAN rule 100 protocol 'udp'
# ICMP
set firewall ipv4 name LOCAL-WAN rule 110 action 'accept'
set firewall ipv4 name LOCAL-WAN rule 110 description 'Allow ICMP'
set firewall ipv4 name LOCAL-WAN rule 110 protocol 'icmp'
# WireGuard peers Proton and Site2
set firewall ipv4 name LOCAL-WAN rule 120 action 'accept'
set firewall ipv4 name LOCAL-WAN rule 120 description 'WireGuard Peers'
set firewall ipv4 name LOCAL-WAN rule 120 destination group address-group 'WG_PEERS'
set firewall ipv4 name LOCAL-WAN rule 120 destination port '51820'
set firewall ipv4 name LOCAL-WAN rule 120 protocol 'udp'
# Next DNS
set firewall ipv4 name LOCAL-WAN rule 130 action 'accept'
set firewall ipv4 name LOCAL-WAN rule 130 description 'DNS Servers'
set firewall ipv4 name LOCAL-WAN rule 130 destination group address-group 'DNS_SERVERS'
set firewall ipv4 name LOCAL-WAN rule 130 destination port '53'
set firewall ipv4 name LOCAL-WAN rule 130 protocol 'udp'
# Google NTP Servers
set firewall ipv4 name LOCAL-WAN rule 140 action 'accept'
set firewall ipv4 name LOCAL-WAN rule 140 description 'NTP Servers'
set firewall ipv4 name LOCAL-WAN rule 140 destination group address-group 'NTP_SERVERS'
set firewall ipv4 name LOCAL-WAN rule 140 destination port '123'
set firewall ipv4 name LOCAL-WAN rule 140 protocol 'udp'
# HTTP For Git and Upgrades
set firewall ipv4 name LOCAL-WAN rule 150 destination port '80,443'
set firewall ipv4 name LOCAL-WAN rule 150 protocol 'tcp'
set firewall ipv4 name LOCAL-WAN rule 150 action 'accept'

# PROTECTED -> ADMIN
set firewall ipv4 name PROTECTED-ADMIN default-action 'reject'
set firewall ipv4 name PROTECTED-ADMIN default-log
set firewall ipv4 name PROTECTED-ADMIN rule 100 action 'accept'
set firewall ipv4 name PROTECTED-ADMIN rule 100 state 'established'
set firewall ipv4 name PROTECTED-ADMIN rule 100 state 'related'
set firewall ipv4 name PROTECTED-ADMIN rule 110 action 'reject'
set firewall ipv4 name PROTECTED-ADMIN rule 110 state 'invalid'
set firewall ipv4 name PROTECTED-ADMIN rule 120 action 'accept'
set firewall ipv4 name PROTECTED-ADMIN rule 120 description 'Device management access OOB'
set firewall ipv4 name PROTECTED-ADMIN rule 120 destination group address-group 'OUT_OF_BAND'
set firewall ipv4 name PROTECTED-ADMIN rule 120 protocol 'tcp_udp'
set firewall ipv4 name PROTECTED-ADMIN rule 130 action 'accept'
set firewall ipv4 name PROTECTED-ADMIN rule 130 description 'Device management access OTHER'
set firewall ipv4 name PROTECTED-ADMIN rule 130 destination group address-group 'MANAGEMENT'
set firewall ipv4 name PROTECTED-ADMIN rule 130 protocol 'tcp_udp'

# WIFI -> SECURITY
set firewall ipv4 name WIFI-SECURITY default-action 'reject'
set firewall ipv4 name WIFI-SECURITY default-log
set firewall ipv4 name WIFI-SECURITY rule 100 action 'accept'
set firewall ipv4 name WIFI-SECURITY rule 100 state 'established'
set firewall ipv4 name WIFI-SECURITY rule 100 state 'related'
set firewall ipv4 name WIFI-SECURITY rule 110 action 'reject'
set firewall ipv4 name WIFI-SECURITY rule 110 state 'invalid'
set firewall ipv4 name WIFI-SECURITY rule 120 action 'accept'
set firewall ipv4 name WIFI-SECURITY rule 120 description 'Web access to security cameras'
set firewall ipv4 name WIFI-SECURITY rule 120 destination address '10.120.12.10'
set firewall ipv4 name WIFI-SECURITY rule 120 destination port '443,80'
set firewall ipv4 name WIFI-SECURITY rule 120 protocol 'tcp'

# WIFI -> WAN
set firewall ipv4 name WIFI-WAN default-action 'reject'
set firewall ipv4 name WIFI-WAN default-log
set firewall ipv4 name WIFI-WAN rule 100 action 'accept'
set firewall ipv4 name WIFI-WAN rule 100 description 'Allow all traffic to WAN'

# HOSTING -> WAN
set firewall ipv4 name HOSTING-WAN default-action 'reject'
set firewall ipv4 name HOSTING-WAN default-log
set firewall ipv4 name HOSTING-WAN rule 100 action 'accept'
set firewall ipv4 name HOSTING-WAN rule 100 description 'Accept all traffic to WAN'

# WAN -> HOSTING
set firewall ipv4 name WAN-HOSTING default-action 'reject'
set firewall ipv4 name WAN-HOSTING default-log
set firewall ipv4 name WAN-HOSTING rule 100 action 'accept'
set firewall ipv4 name WAN-HOSTING rule 100 state 'established'
set firewall ipv4 name WAN-HOSTING rule 100 state 'related'
set firewall ipv4 name WAN-HOSTING rule 110 action 'reject'
set firewall ipv4 name WAN-HOSTING rule 110 state 'invalid'

# WIFI -> LOCAL
set firewall ipv4 name WIFI-LOCAL default-action 'reject'
set firewall ipv4 name WIFI-LOCAL default-log
set firewall ipv4 name WIFI-LOCAL rule 100 action 'accept'
set firewall ipv4 name WIFI-LOCAL rule 100 state 'established'
set firewall ipv4 name WIFI-LOCAL rule 100 state 'related'
set firewall ipv4 name WIFI-LOCAL rule 110 action 'reject'
set firewall ipv4 name WIFI-LOCAL rule 110 state 'invalid'
set firewall ipv4 name WIFI-LOCAL rule 120 action 'accept'
set firewall ipv4 name WIFI-LOCAL rule 120 description 'Accept traffic to local services'
set firewall ipv4 name WIFI-LOCAL rule 120 destination group port-group 'LOCAL_SERVICES'
set firewall ipv4 name WIFI-LOCAL rule 120 protocol 'tcp_udp'
set firewall ipv4 name WIFI-LOCAL rule 130 action 'accept'
set firewall ipv4 name WIFI-LOCAL rule 130 description 'SSH'
set firewall ipv4 name WIFI-LOCAL rule 130 destination port '22'
set firewall ipv4 name WIFI-LOCAL rule 130 protocol 'tcp'

# LOCAL -> WIFI
set firewall ipv4 name LOCAL-WIFI default-action 'reject'
set firewall ipv4 name LOCAL-WIFI default-log
set firewall ipv4 name LOCAL-WIFI rule 100 action 'accept'
set firewall ipv4 name LOCAL-WIFI rule 100 state 'established'
set firewall ipv4 name LOCAL-WIFI rule 100 state 'related'
set firewall ipv4 name LOCAL-WIFI rule 110 action 'reject'
set firewall ipv4 name LOCAL-WIFI rule 110 state 'invalid'

# WIFI-ADMIN (XXXX)
set firewall ipv4 name WIFI-ADMIN default-action 'reject'
set firewall ipv4 name WIFI-ADMIN default-log
set firewall ipv4 name WIFI-ADMIN rule 100 action 'accept'
set firewall ipv4 name WIFI-ADMIN rule 100 description 'Accept All Traffic'

# ADMIN-WIFI (XXXX)
set firewall ipv4 name ADMIN-WIFI default-action 'reject'
set firewall ipv4 name ADMIN-WIFI default-log
set firewall ipv4 name ADMIN-WIFI rule 100 action 'accept'
set firewall ipv4 name ADMIN-WIFI rule 100 description 'Accept All Traffic'

# HOSTING -> LOCAL
set firewall ipv4 name HOSTING-LOCAL default-action 'reject'
set firewall ipv4 name HOSTING-LOCAL default-log
set firewall ipv4 name HOSTING-LOCAL rule 100 action 'accept'
set firewall ipv4 name HOSTING-LOCAL rule 100 state 'established'
set firewall ipv4 name HOSTING-LOCAL rule 100 state 'related'
set firewall ipv4 name HOSTING-LOCAL rule 110 action 'reject'
set firewall ipv4 name HOSTING-LOCAL rule 110 state 'invalid'

# LOCAL -> HOSTING
set firewall ipv4 name LOCAL-HOSTING default-action 'reject'
set firewall ipv4 name LOCAL-HOSTING default-log
set firewall ipv4 name LOCAL-HOSTING rule 100 action 'accept'
set firewall ipv4 name LOCAL-HOSTING rule 100 state 'established'
set firewall ipv4 name LOCAL-HOSTING rule 100 state 'related'
set firewall ipv4 name LOCAL-HOSTING rule 110 action 'reject'
set firewall ipv4 name LOCAL-HOSTING rule 110 state 'invalid'

# WIFI -> HOSTING
set firewall ipv4 name WIFI-HOSTING default-action 'reject'
set firewall ipv4 name WIFI-HOSTING default-log
set firewall ipv4 name WIFI-HOSTING rule 100 action 'accept'
set firewall ipv4 name WIFI-HOSTING rule 100 state 'established'
set firewall ipv4 name WIFI-HOSTING rule 100 state 'related'
set firewall ipv4 name WIFI-HOSTING rule 110 action 'reject'
set firewall ipv4 name WIFI-HOSTING rule 110 state 'invalid'
set firewall ipv4 name WIFI-HOSTING rule 120 action 'accept'
set firewall ipv4 name WIFI-HOSTING rule 120 description 'Accept traffic to horizon.sigaint.au'
set firewall ipv4 name WIFI-HOSTING rule 120 destination address "10.120.14.5"
set firewall ipv4 name WIFI-HOSTING rule 130 action 'accept'
set firewall ipv4 name WIFI-HOSTING rule 130 description 'Accept traffic to satellite.hosting.sigaint.au'
set firewall ipv4 name WIFI-HOSTING rule 130 destination address "10.120.14.10"

# HOSTING -> WIFI
set firewall ipv4 name HOSTING-WIFI default-action 'reject'
set firewall ipv4 name HOSTING-WIFI default-log
set firewall ipv4 name HOSTING-WIFI rule 100 action 'accept'
set firewall ipv4 name HOSTING-WIFI rule 100 state 'established'
set firewall ipv4 name HOSTING-WIFI rule 100 state 'related'
set firewall ipv4 name HOSTING-WIFI rule 110 action 'reject'
set firewall ipv4 name HOSTING-WIFI rule 110 state 'invalid'


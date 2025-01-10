#!/bin/vbash

# Allow ping to all LOCAL interfaces
set firewall global-options all-ping enable

# WAN -> LOCAL
set firewall ipv4 name WAN-LOCAL default-action 'reject'
set firewall ipv4 name WAN-LOCAL default-log
set firewall ipv4 name WAN-LOCAL rule 100 action 'accept'
set firewall ipv4 name WAN-LOCAL rule 100 state 'established'
set firewall ipv4 name WAN-LOCAL rule 100 state 'related'
set firewall ipv4 name WAN-LOCAL rule 110 action 'accept'
set firewall ipv4 name WAN-LOCAL rule 110 description 'SSH'
set firewall ipv4 name WAN-LOCAL rule 110 destination port '22'
set firewall ipv4 name WAN-LOCAL rule 110 protocol 'tcp'
set firewall ipv4 name WAN-LOCAL rule 120 action 'accept'
set firewall ipv4 name WAN-LOCAL rule 120 description 'Wireguard VPN'
set firewall ipv4 name WAN-LOCAL rule 120 destination port '51820'
set firewall ipv4 name WAN-LOCAL rule 120 protocol 'udp'

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


# LOCAL -> WAN
set firewall ipv4 name LOCAL-WAN default-action 'reject'
set firewall ipv4 name LOCAL-WAN default-log
set firewall ipv4 name LOCAL-WAN rule 100 action 'accept'

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
set firewall ipv4 name WIFI-WAN rule 100 description 'Accept All Traffic'

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


# LOCAL -> WIFI
set firewall ipv4 name LOCAL-WIFI default-action 'reject'
set firewall ipv4 name LOCAL-WIFI default-log
set firewall ipv4 name LOCAL-WIFI rule 100 action 'accept'
set firewall ipv4 name LOCAL-WIFI rule 100 state 'established'
set firewall ipv4 name LOCAL-WIFI rule 100 state 'related'
set firewall ipv4 name LOCAL-WIFI rule 110 action 'reject'
set firewall ipv4 name LOCAL-WIFI rule 110 state 'invalid'

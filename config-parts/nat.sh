#!/bin/vbash

## Define NAT rules
#
#set nat source rule 100 outbound-interface name 'eth0'
#set nat source rule 100 source address '10.120.0.0/16'
#set nat source rule 100 translation address 'masquerade'

set nat source rule 100 outbound-interface name 'wg600'
set nat source rule 100 translation address 'masquerade'

# Force port 53 traffic to use local dns
#set nat destination rule 102 description 'Force DNS for Wifi'
#set nat destination rule 102 destination address '!10.120.13.1'
#set nat destination rule 102 destination port '53'
#set nat destination rule 102 inbound-interface name 'br0.13'
#set nat destination rule 102 protocol 'tcp_udp'
#set nat destination rule 102 translation address '10.120.13.1'
#set nat destination rule 102 translation port '53'


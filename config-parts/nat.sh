#!/bin/vbash

## Define NAT rules
#
set nat source rule 50 outbound-interface name 'eth0'
set nat source rule 50 source address '10.120.0.0/16'
set nat source rule 50 translation address 'masquerade'

#set nat source rule 100 outbound-interface name 'wg600'
#set nat source rule 100 translation address 'masquerade'

set nat destination rule 10 description "DMZ LB - 80"
set nat destination rule 10 destination port "80"
set nat destination rule 10 inbound-interface name "eth0"
set nat destination rule 10 protocol "tcp_udp"
set nat destination rule 10 translation address "10.120.20.5"
set nat destination rule 10 translation port "80"

set nat destination rule 15 description "DMZ LB - 443"
set nat destination rule 15 destination port "443"
set nat destination rule 15 inbound-interface name "eth0"
set nat destination rule 15 protocol "tcp_udp"
set nat destination rule 15 translation address "10.120.20.5"
set nat destination rule 15 translation port "443"

set nat destination rule 20 description "Plex - 32400"
set nat destination rule 20 destination port "32400"
set nat destination rule 20 inbound-interface name "eth0"
set nat destination rule 20 protocol "tcp"
set nat destination rule 20 translation address "10.120.13.10"
set nat destination rule 20 translation port "32400"

# Force port 53 traffic to use local dns
#set nat destination rule 102 description 'Force DNS for Wifi'
#set nat destination rule 102 destination address '!10.120.13.1'
#set nat destination rule 102 destination port '53'
#set nat destination rule 102 inbound-interface name 'br0.13'
#set nat destination rule 102 protocol 'tcp_udp'
#set nat destination rule 102 translation address '10.120.13.1'
#set nat destination rule 102 translation port '53'


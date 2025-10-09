#!/bin/vbash

## Internal -> WAN
set nat source rule 50 outbound-interface name 'eth0'
set nat source rule 50 source address '10.120.0.0/16'
set nat source rule 50 translation address 'masquerade'
r
####
## WAN eth0 (443,80) -> OpenShift Ingress
##
set nat destination rule 10 description "WAN: OpenShift Ingress Controller (80)"
set nat destination rule 10 destination port "80"
set nat destination rule 10 destination address "103.214.222.109"
set nat destination rule 10 inbound-interface name "eth0"
set nat destination rule 10 protocol "tcp_udp"
set nat destination rule 10 translation address "10.120.14.6"
set nat destination rule 10 translation port "80"

set nat destination rule 15 description "WAN: OpenShift Ingress Controller (443)"
set nat destination rule 15 destination port "443"
set nat destination rule 15 destination address "103.214.222.109"
set nat destination rule 15 inbound-interface name "eth0"
set nat destination rule 15 protocol "tcp_udp"
set nat destination rule 15 translation address "10.120.14.6"
set nat destination rule 15 translation port "443"


####
## CORP br0.13 (443,80) -> OpenShift Ingress
##
set nat destination rule 20 description "CORP: OpenShift Ingress Controller (80)"
set nat destination rule 20 destination port "80"
set nat destination rule 20 destination address "103.214.222.109"
set nat destination rule 20 inbound-interface name "br0.13"
set nat destination rule 20 protocol "tcp_udp"
set nat destination rule 20 translation address "10.120.14.6"
set nat destination rule 20 translation port "80"

set nat destination rule 25 description "CORP: OpenShift Ingress Controller (443)"
set nat destination rule 25 destination port "443"
set nat destination rule 25 destination address "103.214.222.109"
set nat destination rule 25 inbound-interface name "br0.13"
set nat destination rule 25 protocol "tcp_udp"
set nat destination rule 25 translation address "10.120.14.6"
set nat destination rule 25 translation port "443"

####
## HOSTING br0.14 (443,80) -> OpenShift Ingress
##
set nat destination rule 30 description "HOSTING: OpenShift Ingress Controller (80)"
set nat destination rule 30 destination port "80"
set nat destination rule 30 destination address "103.214.222.109"
set nat destination rule 30 inbound-interface name "br0.14"
set nat destination rule 30 protocol "tcp_udp"
set nat destination rule 30 translation address "10.120.14.6"
set nat destination rule 30 translation port "80"

set nat destination rule 35 description "HOSTING: OpenShift Ingress Controller (443)"
set nat destination rule 35 destination port "443"
set nat destination rule 35 destination address "103.214.222.109"
set nat destination rule 35 inbound-interface name "br0.14"
set nat destination rule 35 protocol "tcp_udp"
set nat destination rule 35 translation address "10.120.14.6"
set nat destination rule 35 translation port "443"

#set nat source rule 100 outbound-interface name 'wg600'
#set nat source rule 100 translation address 'masquerade'

# Force port 53 traffic to use local dns
#set nat destination rule 102 description 'Force DNS for Wifi'
#set nat destination rule 102 destination address '!10.120.13.1'
#set nat destination rule 102 destination port '53'
#set nat destination rule 102 inbound-interface name 'br0.13'
#set nat destination rule 102 protocol 'tcp_udp'
#set nat destination rule 102 translation address '10.120.13.1'
#set nat destination rule 102 translation port '53'


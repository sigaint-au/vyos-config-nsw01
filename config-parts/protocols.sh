#/bin/vbash


## BGP Configuration
# The following is for MetalLB OpenShift
#
set protocols bgp system-as '65000'
set protocols bgp parameters router-id '10.120.14.1'
set protocols bgp address-family ipv4-unicast redistribute static

set protocols bgp neighbor 10.120.14.11 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.11 remote-as '65000'

set protocols bgp neighbor 10.120.14.12 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.12 remote-as '65000'

set protocols bgp neighbor 10.120.14.13 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.13 remote-as '65000'

set protocols bgp neighbor 10.120.14.14 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.14 remote-as '65000'

set protocols bgp neighbor 10.120.14.15 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.15 remote-as '65000'

set protocols bgp neighbor 10.120.14.16 address-family ipv4-unicast
set protocols bgp neighbor 10.120.14.16 remote-as '65000'


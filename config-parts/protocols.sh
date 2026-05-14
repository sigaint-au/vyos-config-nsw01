#/bin/vbash

## BGP Configuration
# The following is for MetalLB OpenShift
#
set protocols bgp system-as '65000'
set protocols bgp parameters router-id '10.120.14.1'
set protocols bgp address-family ipv4-unicast redistribute static
set protocols bgp peer-group k3s-lhm-metallb address-family ipv4-unicast
set protocols bgp peer-group k3s-lhm-metallb remote-as '65000'
set protocols bgp listen range 10.120.14.0/24 peer-group k3s-lhm-metallb
set protocols bgp neighbor br0.14 interface peer-group k3s-lhm-metallb

## Default Gateway
set protocols static route 0.0.0.0/0 interface eth0

## Wireguard
set protocols static route 10.130.0.0/16 interface wg600
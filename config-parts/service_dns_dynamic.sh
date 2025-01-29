#!/bin/vbash
###
## This is currently disabled as it is not working.
## It is left here as a reference for future work.
###

#set service dns dynamic name service-cloudflare-eth0 address interface 'eth0'
#set service dns dynamic name service-cloudflare-eth0 host-name 'au-lan-rou-01.nsw01.sigaint.au'
#set service dns dynamic name service-cloudflare-eth0 ip-version 'ipv6'
#set service dns dynamic name service-cloudflare-eth0 password "$secret_dns_dynamic_cloudflare_password"
#set service dns dynamic name service-cloudflare-eth0 protocol 'cloudflare'
#set service dns dynamic name service-cloudflare-eth0 username 'mark@hahl.id.au'
#set service dns dynamic name service-cloudflare-eth0 zone 'sigaint.au'

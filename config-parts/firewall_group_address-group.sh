#!/bin/vbash

####
## DNS Servers
##
set firewall group address-group DNS_SERVERS address '45.90.28.189'
set firewall group address-group DNS_SERVERS address '45.90.30.189'
set firewall group ipv6-address-group DNS_SERVERS_6 address '2a07:a8c0::2a:b561'
set firewall group ipv6-address-group DNS_SERVERS_6 address '2a07:a8c1::2a:b561'

####
## WireGuard Peers
##
# * ProtonVPN
# * Second Site (Sombernet)
#
set firewall group address-group WG_PEERS address '217.138.216.98'
set firewall group address-group WG_PEERS address '159.196.99.195'

# Proton IPv6
# Second Site Ipv6
#
set firewall group ipv6-address-group WG_PEERS_6 address '2401:d002:7800::720'
set firewall group ipv6-address-group WG_PEERS_6 address '2a02:6ea0:1703:3087::10'

####
## Management address which should be accessible from the PROTECTED
## network
##
set firewall group address-group MANAGEMENT address '10.120.10.5'

##
# time1.google.com
# time2.google.com
# time3.google.com
#
set firewall group address-group NTP_SERVERS address '216.239.35.0'
set firewall group address-group NTP_SERVERS address '216.239.35.4'
set firewall group address-group NTP_SERVERS address '216.239.35.8'
set firewall group ipv6-address-group NTP_SERVERS_6 address '2001:4860:4806::'
set firewall group ipv6-address-group NTP_SERVERS_6 address '2001:4860:4806:4::'
set firewall group ipv6-address-group NTP_SERVERS_6 address '2001:4860:4806:8::'

# OOB Address for iDRAC and XClarity
set firewall group address-group OUT_OF_BAND address '10.120.10.10'
set firewall group address-group OUT_OF_BAND address '10.120.10.11'
set firewall group address-group OUT_OF_BAND address '10.120.10.12'
set firewall group address-group OUT_OF_BAND address '10.120.10.13'
set firewall group address-group OUT_OF_BAND address '10.120.10.14'
#!/bin/vbash

##
# DNS Servers
#
set firewall group address-group DNS_SERVERS address '45.90.28.189'
set firewall group address-group DNS_SERVERS address '45.90.30.189'
set firewall group address-group DNS_SERVERS address '2a07:a8c0::2a:b561'
set firewall group address-group DNS_SERVERS address '2a07:a8c1::2a:b561'

##
# Management address which should be accessible from the PROTECTED
# network
#
set firewall group address-group MANAGEMENT address '10.120.10.5'

# time1.google.com
# time2.google.com
# time3.google.com
#
set firewall group address-group NTP_SERVERS address '216.239.35.0'
set firewall group address-group NTP_SERVERS address '216.239.35.4'
set firewall group address-group NTP_SERVERS address '216.239.35.8'

# OOB Address for iDRAC and XClarity
set firewall group address-group OUT_OF_BAND address '10.120.10.10'
set firewall group address-group OUT_OF_BAND address '10.120.10.11'
set firewall group address-group OUT_OF_BAND address '10.120.10.12'
set firewall group address-group OUT_OF_BAND address '10.120.10.13'
set firewall group address-group OUT_OF_BAND address '10.120.10.14'
#!/bin/vbash

# Hostname
set system host-name 'lan-rou-01.nsw01.sigaint.au'

# System DNS set to NextDNS
set system name-server '45.90.28.189'
set system name-server '45.90.30.189'
set system name-server '2a07:a8c0::2a:b561'
set system name-server '2a07:a8c1::2a:b561'

# Syslog
set system syslog global facility all level 'info'
set system syslog global facility local7 level 'debug'
#!/bin/vbash

# HTTP Ports
set firewall group port-group HTTP_PORTS port '80'
set firewall group port-group HTTP_PORTS port '443'

# Ports for IPA Server
set firewall group port-group IPA_PORTS port '80'
set firewall group port-group IPA_PORTS port '443'
set firewall group port-group IPA_PORTS port '389'
set firewall group port-group IPA_PORTS port '636'
set firewall group port-group IPA_PORTS port '88'
set firewall group port-group IPA_PORTS port '464'
set firewall group port-group IPA_PORTS port '123'
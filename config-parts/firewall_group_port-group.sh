#!/bin/vbash

# HTTP Ports
set firewall group port-group HTTP_PORTS port '80'
set firewall group port-group HTTP_PORTS port '443'

# OCP PORTS
set firewall group port-group OCP_PORTS port '80'
set firewall group port-group OCP_PORTS port '443'
set firewall group port-group OCP_PORTS port '6443'


set firewall group port-group LOCAL_SERVICES port '3128'
set firewall group port-group LOCAL_SERVICES port '123'
set firewall group port-group LOCAL_SERVICES port '53'
set firewall group port-group LOCAL_SERVICES port '179' # BGP

# Ports for IPA Server
set firewall group port-group IPA_PORTS port '80'
set firewall group port-group IPA_PORTS port '443'
set firewall group port-group IPA_PORTS port '389'
set firewall group port-group IPA_PORTS port '636'
set firewall group port-group IPA_PORTS port '88'
set firewall group port-group IPA_PORTS port '464'
set firewall group port-group IPA_PORTS port '123'
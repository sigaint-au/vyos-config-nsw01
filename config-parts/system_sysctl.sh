#!/bin/vbash

#set system sysctl parameter net.core.default_qdisc value 'fq'
#set system sysctl parameter net.ipv4.tcp_congestion_control value 'brr'
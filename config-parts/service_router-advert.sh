#!/bin/vbash

# WIFI - RA
set service router-advert interface br0.13 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.13 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.13 other-config-flag
set service router-advert interface br0.13 prefix 2404:e80:4b6f::/64

# DMZ - RA
set service router-advert interface br0.20 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.20 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.20 other-config-flag
set service router-advert interface br0.20 2404:e80:4b6f:1::/64

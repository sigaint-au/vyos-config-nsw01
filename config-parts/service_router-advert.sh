#!/bin/vbash

# VMNET - RA
set service router-advert interface br0.20 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.20 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.20 other-config-flag
set service router-advert interface br0.20 prefix 2404:e80:4b6f:1::/64

# DMZ - RA
set service router-advert interface br0.21 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.21 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.21 other-config-flag
set service router-advert interface br0.21 prefix 2404:e80:4b6f:6::/64

# MGMT - RA
set service router-advert interface br0.10 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.10 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.10 other-config-flag
set service router-advert interface br0.10 prefix 2404:e80:4b6f:2::/64

# PROTECTED - RA
set service router-advert interface br0.11 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.11 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.11 other-config-flag
set service router-advert interface br0.11 prefix 2404:e80:4b6f:3::/64

# SECURITY - RA
set service router-advert interface br0.12 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.12 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.12 other-config-flag
set service router-advert interface br0.12 prefix 2404:e80:4b6f:4::/64

# WIFI - RA
set service router-advert interface br0.13 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.13 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.13 other-config-flag
set service router-advert interface br0.13 prefix 2404:e80:4b6f::/64

# HOSTING - RA
set service router-advert interface br0.14 name-server '2a07:a8c0::2a:b561'
set service router-advert interface br0.14 name-server '2a07:a8c1::2a:b561'
set service router-advert interface br0.14 other-config-flag
set service router-advert interface br0.14 prefix 2404:e80:4b6f:5::/64

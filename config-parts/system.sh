#!/bin/vbash

# Hostname
set system host-name 'lan-rou-01.nsw01.sigaint.au'

set system time-zone 'Aystralia/Sydney'

# System DNS set to NextDNS
set system name-server '45.90.28.189'
set system name-server '45.90.30.189'
set system name-server '2a07:a8c0::2a:b561'
set system name-server '2a07:a8c1::2a:b561'

# Device requires this baud rate
set system console device ttyS0 speed '115200'

# Set welcome banner
set system login banner post-login 'Welcome to VyOS!\n\n  ┌── ┐\n  . VyOS 1.5 \n  └ ──┘'

# Default password for vyos user
set system login user vyos authentication encrypted-password '$6$rounds=656000$/ihVNMXJyZ51jk.D$KR6ersssBUiHTY.ZT5N8DdbSnOKw0u1D/6EjV1nIY6m1G0MhpkdPwTE2ypEgdvwskBXo3PcofK0cQkUKdkAUF/'
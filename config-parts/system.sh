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

# Default password for VyOS user
set system login user vyos authentication encrypted-password '$6$rounds=656000$/ihVNMXJyZ51jk.D$KR6ersssBUiHTY.ZT5N8DdbSnOKw0u1D/6EjV1nIY6m1G0MhpkdPwTE2ypEgdvwskBXo3PcofK0cQkUKdkAUF/'
set system login user vyos authentication public-keys SK_LAN_LOCAL key 'AAAAC3NzaC1lZDI1NTE5AAAAIFWqGuDHjHW4DBzhvM1Zcww8fvDLZF3Wm+tyHIIXreJJ'
set system login user vyos authentication public-keys SK_LAN_LOCAL type 'ssh-ed25519'
set system login user vyos authentication public-keys YUBIKEY key 'AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIPOc+bvxJXokMvERTNCNj51vmmIdaL5zXjlw2m1NxPS3AAAAGHNzaDptYXJrLmhhaGxAc2lnYWludC5hdQ=='
set system login user vyos authentication public-keys YUBIKEY type 'sk-ssh-ed25519@openssh.com'

# Conntrack modules
set system conntrack modules ftp
set system conntrack modules h323
set system conntrack modules nfs
set system conntrack modules pptp
set system conntrack modules sip
set system conntrack modules sqlnet
set system conntrack modules tftp
#/bin/vbash

set policy route NET-WIFI-VPN interface 'br0.13'
set policy route NET-WIFI-VPN rule 5 description 'Bypass VPN for local networks'
set policy route NET-WIFI-VPN rule 5 destination group network-group 'NSW01_LOCAL_NETS'
set policy route NET-WIFI-VPN rule 5 set table 'main'

set policy route NET-WIFI-VPN rule 10 description 'Route VLAN13 traffic to table 10'
set policy route NET-WIFI-VPN rule 10 set table '10'
set policy route NET-WIFI-VPN rule 10 source address '10.120.13.0/24'
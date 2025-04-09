#/bin/vbash

# Each interface must be added to the policy
# or else it will not route correctly.
#
#set policy route NET-WIFI-VPN interface 'br0.13' # WIFI
#set policy route NET-WIFI-VPN interface 'br0.14' # HOSTING

#set policy route NET-WIFI-VPN rule 5 description 'Bypass VPN for local networks'
#set policy route NET-WIFI-VPN rule 5 destination group network-group 'NSW01_LOCAL_NETS'
#set policy route NET-WIFI-VPN rule 5 set table 'main'

#set policy route NET-WIFI-VPN rule 10 description 'Route VLAN10 traffic to table 10'
#set policy route NET-WIFI-VPN rule 10 set table '10'
#set policy route NET-WIFI-VPN rule 10 source address '10.120.10.0/24'

#set policy route NET-WIFI-VPN rule 20 description 'Route VLAN13 traffic to table 10'
#set policy route NET-WIFI-VPN rule 20 set table '10'
#set policy route NET-WIFI-VPN rule 20 source address '10.120.13.0/24'

#set policy route NET-WIFI-VPN rule 30 description 'Route VLAN14 traffic to table 10'
#set policy route NET-WIFI-VPN rule 30 set table '10'
#set policy route NET-WIFI-VPN rule 30 source address '10.120.14.0/24'

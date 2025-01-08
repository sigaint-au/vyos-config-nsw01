#/bin/vbash

set protocols static table 10 route 0.0.0.0/0 interface wg600
set protocols static table 10 route6 ::/0 interface wg600

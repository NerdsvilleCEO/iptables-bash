#!/bin/bash

#Allow ping replies
#iptables -A INPUT -p icmp --icmp-type 0 -s 0/0 -m state --state ESTABLISHED,RELATED -j ACCEPT

#Drop everything else
iptables -A INPUT -p tcp -m state --state NEW -j DROP

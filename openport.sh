#!/bin/sh

if [ "$1" != "" ] && [ "$2" != "" ]; then
  iptables -I INPUT 1 -p tcp --dport "$2" -s "$1" -j ACCEPT
  exit 0
else
  echo "Please provide an IP Address and a Port to open\n"
  echo "Sample Usage ./openport.sh 192.168.0.1 22"
  exit 1
fi



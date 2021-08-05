#!/bin/bash

ip_base=192.168.3.
router_ip=192.168.3.2
start=84
ping -c 1 $ip_base$start
while [ $? -eq 0 ] && [ $start -lt 255 ]
do 
  start=`expr $start + 1`
  ping -c 1 $ip_base$start
done
if [ $start -ge 255 ]; then
  echo "had tried all ip and failed :("
  exit 2
fi
ip=$ip_base$start
echo "setting ip=> $ip"
networksetup -setmanual "Wi-Fi" $ip 255.255.255.0 $router_ip

networksetup -setdnsservers "Wi-Fi" $router_ip

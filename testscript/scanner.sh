#/bin/bash

echo "please type ip you want to check"
read IP_ADDR

ping -c 4 $IP_ADDR > /dev/null 2>&1

if [ $? -eq 0 ];then
	echo "starting to scan ports"
	echo "*Target - $IP_ADDR: Full scan results:*"
	echo Host:$IP_ADDR   Ports: `nmap -sT $IP_ADDR | egrep "open"`
	else
	echo "$IP_ADDR is not responding or not available"
fi

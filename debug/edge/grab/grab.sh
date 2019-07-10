#! /bin/bash

cd ../rawdata

# vehicle IP address
V_IP_File='../vip/ip.txt'
vehicle_IP=''

while read -r line
do
	vehicle_IP="$line"
done < "$V_IP_File"

wget -r -nd "http://$vehicle_IP:9000"

if [ -e 'index.html' ]
then
	rm index.html
fi

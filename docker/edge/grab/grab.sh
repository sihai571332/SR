#! /bin/bash

cd ../rawdata

while [ 1 -eq 1 ]
do

	# vehicle IP address
	wget -r -nd http://192.168.157.128:9000
	#wget -r -nd http://192.168.72.132:9000

	if [ -e 'index.html' ]
	then
		rm index.html
	fi

	sleep 30
done

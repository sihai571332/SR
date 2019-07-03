#! /bin/bash

cd ../rawdata

# vehicle IP address
#wget -r -nd http://192.168.137.163:9000
wget -r -nd http://192.168.137.249:9000
#wget -r -nd http://192.168.157.128:9000
#wget -r -nd http://192.168.72.132:9000

if [ -e 'index.html' ]
then
	rm index.html
fi

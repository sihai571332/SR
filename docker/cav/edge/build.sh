#! /bin/bash

# 1) create directories
if [ -d 'rawdata' ]
then
	rm rawdata -rf
fi
mkdir rawdata

if [ -d 'fusioned' ]
then
	rm fusioned -rf
fi
mkdir fusioned

if [ -d 'result' ]
then
	rm result -rf
fi
mkdir result

# 2) build images
cd grab
docker build -t edge/grab .

cd ../fusion
docker build -t edge/fusion .

cd ../detection
docker build -t edge/detection .

cd ../broadcast
docker build -t edge/broadcast .


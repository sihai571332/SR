#! /bin/bash

if [ -d 'rawdata' ]
then
	rm rawdata -rf
fi
mkdir rawdata

cd grab
docker build -t edge/grab .

cd ../broadcast
docker build -t edge/broadcast .

cd ../rawdata
docker run --rm --name eg -v `pwd`:/rawdata -d edge/grab
docker run --rm --name eb -v `pwd`:/result -d edge/broadcast



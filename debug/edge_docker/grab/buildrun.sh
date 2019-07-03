#! /bin/bash

docker build -t edge/grab .

cd ..

if [ -d 'rawdata' ]
then
	rm rawdata -rf
fi
mkdir rawdata
cd rawdata

docker run --rm --name eg -v `pwd`:/rawdata -d edge/grab
#docker run --rm --name eg -v `pwd`:/rawdata edge/grab

#! /bin/bash

docker build -t edge/broadcast .

cd ../rawdata

docker run --rm --name eb -v `pwd`:/result -d edge/broadcast

#docker run --rm --name eb -v `pwd`:/result edge/broadcast

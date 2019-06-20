#! /bin/bash

docker build -t vehicle/feedback .

cd ..

if [ -d 'feedback' ]
then
		rm feedback -rf
fi

mkdir feedback
cd feedback

#docker run --rm --name vf -v `pwd`:/output -d vehicle/feedback
docker run --rm --name vf -v `pwd`:/output vehicle/feedback

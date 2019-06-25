#! /bin/bash

if [ -d "shared_folder" ]
then
	rm -rf shared_folder
fi

if [ -d "feedback" ]
then
	rm -rf feedback
fi
mkdir shared_folder
mkdir feedback

cd expose
docker build -t vehicle/expose .

cd ../subscribe
docker build -t vehicle/feedback .

cd ../shared_folder
docker run --rm --name ve -v `pwd`:/mydata -p 9000:9000 -p 3000:3000 -d vehicle/expose /mydata 

cd ../feedback
docker run --rm --name vf -v `pwd`:/output -d vehicle/feedback

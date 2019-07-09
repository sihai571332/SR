#! /bin/bash

# delete all stopped containers
docker rm $(docker ps -a -q)

# create directories
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

# run docker containers
cd shared_folder
docker run -v `pwd`:/mydata -p 9000:9000 -p 3000:3000 -d vehicle/expose /mydata 

cd ../feedback
docker run --network host -v `pwd`:/output -d vehicle/feedback

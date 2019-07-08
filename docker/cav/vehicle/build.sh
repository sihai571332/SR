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


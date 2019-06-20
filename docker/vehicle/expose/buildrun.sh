#!/bin/bash

docker build -t vehicle/expose . 

cd .. 
if [ -d "shared_folder" ] 
then
  rm -rf shared_folder
fi
mkdir shared_folder 
cd shared_folder 

docker run -p 9000:9000 -p 3000:3000 --rm --name ve -v "$(pwd):/mydata" -d vehicle/expose /mydata
#docker run -p 9000:9000 -p 3000:3000 --rm --name ve -v "$(pwd):/mydata" vehicle/expose /mydata

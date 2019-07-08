#! /bin/bash
cd shared_folder
docker run --rm --name ve -v `pwd`:/mydata -p 9000:9000 -p 3000:3000 -d vehicle/expose /mydata 

cd ../feedback
docker run --rm --name vf -v `pwd`:/output -d vehicle/feedback

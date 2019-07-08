#! /bin/bash

cd expose
docker build -t vehicle/expose .

cd ../subscribe
docker build -t vehicle/feedback .


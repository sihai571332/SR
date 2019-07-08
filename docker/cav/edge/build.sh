#! /bin/bash

# 1) build images
cd grab
docker build -t edge/grab .

cd ../fusion
docker build -t edge/fusion .

cd ../detection
docker build -t edge/detection .

cd ../broadcast
docker build -t edge/broadcast .


#! /bin/bash

# 1) build images
cd grab
docker build -t thatape/ecf_edge:grab .
docker build -t st571332/ecf_edge:grab .

cd ../fusion
docker build -t thatape/ecf_edge:fusion .
docker build -t st571332/ecf_edge:fusion .

cd ../detection
docker build -t thatape/ecf_edge:detection .
docker build -t st571332/ecf_edge:detection .

cd ../broadcast
docker build -t thatape/ecf_edge:broadcast .
docker build -t st571332/ecf_edge:broadcast .


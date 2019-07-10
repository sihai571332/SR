#! /bin/bash

cd expose
docker build -t thatape/ecf_vehicle:expose .
docker build -t st571332/ecf_vehicle:expose .

cd ../subscribe
docker build -t thatape/ecf_vehicle:feedback .
docker build -t st571332/ecf_vehicle:feedback .


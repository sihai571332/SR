#!/bin/bash

cd broadcast
docker build -t thatape/ecf_edge:broadcast .
docker build -t st571332/ecf_edge:broadcast .

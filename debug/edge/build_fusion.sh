#!/bin/bash

cd fusion
docker build -t thatape/ecf_edge:fusion .
docker build -t st571332/ecf_edge:fusion .

#!/bin/bash

cd detection
docker build -t thatape/ecf_edge:detection .
docker build -t st571332/ecf_edge:detection .

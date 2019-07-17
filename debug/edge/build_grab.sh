#!/bin/bash

cd grab
docker build -t thatape/ecf_edge:grab .
docker build -t st571332/ecf_edge:grab .

#!/bin/bash

cd detection

if [ ! -e 'yolov3.weights' ]
then
  echo 'yolov3.weights missing.'
  wget https://pjreddie.com/media/files/yolov3.weights
fi

if [ ! -e 'model_data/yolo.h5' ]
then
  echo 'model_data/yolo.h5 missing.'
  python3 convert.py yolov3.cfg yolov3.weights model_data/yolo.h5
fi

docker build -t thatape/ecf_edge:detection .
docker build -t st571332/ecf_edge:detection .

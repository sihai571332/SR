FROM ubuntu

RUN apt-get update
RUN apt-get -y --no-install-recommends install wget
RUN apt-get install -y --no-install-recommends python3.6 python3-pip python3-setuptools 
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow keras opencv-python pillow matplotlib

ADD . /src
WORKDIR /src

RUN wget https://pjreddie.com/media/files/yolov3.weights
RUN python3 convert.py yolov3.cfg yolov3.weights model_data/yolo.h5

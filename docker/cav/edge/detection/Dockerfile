FROM tensorflow/tensorflow:latest

RUN apt-get update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends python3.6 python3-pip python3-setuptools 
RUN pip3 install --upgrade pip

RUN pip3 install tensorflow keras opencv-python image matplotlib
ADD . /src


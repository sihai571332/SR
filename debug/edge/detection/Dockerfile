FROM ubuntu

RUN apt-get update
RUN apt-get -y --no-install-recommends install wget
RUN apt-get install -y --no-install-recommends python3.6 python3-pip python3-setuptools 
RUN pip3 install --upgrade pip

ADD . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

CMD python3 yolo_video.py --image

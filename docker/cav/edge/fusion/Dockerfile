FROM ubuntu

RUN apt-get update
RUN apt-get -y install libsm6 libxext6
RUN apt-get -y install libxrender-dev
RUN apt-get -y install python3 python3-pip

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

CMD python3 stitch.py -i /images/ -o /output/result.jpg

FROM python:alpine3.7

COPY . /app
WORKDIR /app
RUN pip intall -r requirements.txt

CMD python3 stitch.py -i /images/ -o /output/result.jpg

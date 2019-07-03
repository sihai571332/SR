FROM python:3

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

CMD python3 stitch.py -i /images/ -o /output/result.jpg

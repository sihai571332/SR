# broadcasting the result
import paho.mqtt.client as mqtt
import os
import time

OUTPUT_FOLDER = '../result/'
BROKER_URL_FILE = '../bip/ip.txt'

broker_url = ''
with open(BROKER_URL_FILE, 'r') as f:
    broker_url = f.readline().rstrip()

broker_port = 1883

client = mqtt.Client()
client.connect(broker_url, broker_port)
client.loop_start()

# part 2). broadcast the data
fileList = os.listdir(OUTPUT_FOLDER)

while len(fileList):
    fname = fileList[0]
    
    with open(OUTPUT_FOLDER + fname, 'rb') as f:
        filepayload = f.read()
        filebyte = bytearray(filepayload)
        for _ in range(5):
            client.publish('filename', fname, 1)
            client.publish('result', filebyte, 1)

    os.remove(OUTPUT_FOLDER + fname)
    fileList = os.listdir(OUTPUT_FOLDER)

client.loop_stop()

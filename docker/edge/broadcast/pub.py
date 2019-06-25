# broadcasting the result
import paho.mqtt.client as mqtt
import os
import time

OUTPUT_FOLDER = '../result/'

broker_url = '192.168.137.250'
#broker_url = '192.168.72.133'
broker_port = 1883

client = mqtt.Client()
client.connect(broker_url, broker_port)

while True:
    # part 2). broadcast the data
    fileList = os.listdir(OUTPUT_FOLDER)

    while len(fileList):
        fname = fileList[0]
    
        with open(OUTPUT_FOLDER + fname, 'rb') as f:
            filepayload = f.read()
            filebyte = bytearray(filepayload)

            client.publish('filename', fname, 0, False)
            client.publish('result', filebyte, 0, False)

        os.remove(OUTPUT_FOLDER + fname)
        fileList = os.listdir(OUTPUT_FOLDER)

    time.sleep(10)

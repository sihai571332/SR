import paho.mqtt.client as mqtt

broker_url = "192.168.137.250"
#broker_url = "192.168.72.133"
broker_port = 1883

OUTPUT_FOLDER = '../output/'

filename = 'hello'

def on_connect(client, userdata, flags, rc):
    print('connected with result code', rc)

def on_message_filename(client, userdata, message):
    global filename
    filename = message.payload.decode()
    print('filename reset to ', filename)

def on_message_result(client, userdata, message):
    global filename
    with open(OUTPUT_FOLDER + filename, 'wb') as f:
        f.write(message.payload)

    print('file received')

client = mqtt.Client()
client.on_connect = on_connect
client.connect(broker_url, broker_port)

#client.subscribe('result', qos=1)
client.subscribe('filename', qos=1)
client.subscribe('result', qos=1)

client.message_callback_add('filename', on_message_filename)
client.message_callback_add('result', on_message_result)

client.loop_forever()

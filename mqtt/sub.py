import paho.mqtt.client as mqtt

broker_url = "0.0.0.0"
broker_port = 1883

def on_connect(client, userdata, flags, rc):
    print('connected with result code', rc)

def on_message(client, userdata, message):
    print('message received: ', message.payload.decode())

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
client.connect(broker_url, broker_port)

client.subscribe('TestingTopic', qos=1)

client.publish(topic='TestingTopic', payload='TestingPayload', qos=1, retain=False)

client.loop_forever()

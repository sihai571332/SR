import requests
import os

# part 2). broadcast/upload to vehicle
path = '../sf/'
fileList = os.listdir(path)

while len(fileList) > 0:
    fname = fileList[0]

    with open(path + fname, 'rb') as f:
        resp = requests.post('http://192.168.72.132:5000/upload', files={'file': f})
        # resp = requests.post('http://xxx.xxx.xxx.xxx:5000/upload', files={'file': f})
        # resp = requests.post('http://xxx.xxx.xxx.xxx:5000/upload', files={'file': f})
        print(resp.text)

    os.remove(path + fname)
    fileList = os.listdir(path)

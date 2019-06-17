import requests
import os

# part 1). grab the vehicle data from a single vehicle
resp = requests.get('http://192.168.72.132:5000/expose')

while resp.headers['filenumber'] != '0':
    fn = resp.headers['filename']
    with open('../sf/' + fn, 'wb') as f:
        f.write(resp.content)
    resp = requests.get('http://192.168.72.132:5000/expose')

# no more new data to grab
print('no more')

# part 2). broadcast/upload to vehicle
path = '../sf/'
fileList = os.listdir(path)

while len(fileList) > 0:
    fname = fileList[0]

    with open(path + fname, 'rb') as f:
        resp = requests.post('http://192.168.72.132:5000/upload', files={'file': f})
        print(resp.text)

    os.remove(path + fname)
    fileList = os.listdir(path)

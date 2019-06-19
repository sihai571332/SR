import requests
import time


RD_FOLDER = '../rawdata/'
RESULT_FOLDER = '../result/'

# part 1). grab the vehicle data from a single vehicle
resp = requests.get('http://192.168.72.132:5000/expose')

while resp.headers['filenumber'] != '0':
    fn = resp.headers['filename']

    with open(RD_FOLDER + fn, 'wb') as f:
        f.write(resp.content)

    with open(RESULT_FOLDER + fn, 'wb') as f:
        f.write(resp.content)

    resp = requests.get('http://192.168.72.132:5000/expose')

import requests

resp = requests.get('http://192.168.72.132:5000/expose')

while resp.headers['hasfiles']:
    fn = resp.headers['filename']
    with open('../sf/' + fn, 'wb') as f:
        f.write(r.content)

from flask import Flask, send_from_directory
import os

app = Flask(__name__)

@app.route('/expose')
def expose():
    path = "../sf/"
    fileList = os.listdir(path)
    fname = fileList[0]

    resp = send_from_directory(path, fname)

    del fileList[0]
    os.remove(path + fname)

    if len(fileList) > 0:
        resp.headers['hasfiles'] = 1
    else:
        resp.headers['hasfiles'] = 0
        
    return resp

@app.route('/files')
def test_files():
    global count
    count += 1
    path = '../sf'
    with open(path + '/test.txt', 'w+') as f:
        f.write('Howdy! {}th visitor\n'.format(count))

    return "check host shared_folder"

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

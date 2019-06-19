from flask import Flask, send_from_directory, make_response
from flask import request
from werkzeug.utils import secure_filename
import os

UPLOAD_FOLDER = '../sf/'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] =  UPLOAD_FOLDER

@app.route('/expose')
def expose():
    path = UPLOAD_FOLDER 
    fileList = os.listdir(path)
    if len(fileList) > 0:
        fname = fileList[0]

        resp = send_from_directory(path, fname)
        resp.headers['filename'] = fname
        resp.headers['filenumber'] = len(fileList)

        os.remove(path + fname)

        return resp
    else:
        resp = make_response()
        resp.headers['filenumber'] = 0

        return resp

@app.route('/upload', methods = ['POST'])
def upload():
    if request.method == 'POST':
        if 'file' not in request.files:
            return 'no file uploaded'
        File = request.files['file']
        fn = secure_filename(File.filename)
        File.save(os.path.join(app.config['UPLOAD_FOLDER'], fn))

        return "Congrats, file uploaded"
    else:
        return 'use post'

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

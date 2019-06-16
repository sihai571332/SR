from flask import Flask
import os

app = Flask(__name__)

count = 0

@app.route('/')
def hello():
    path = "../sf"
    lists = os.listdir(path)
    return str(lists)

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

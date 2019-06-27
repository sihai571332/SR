#! /bin/bash

echo `curl -F "file=@$1" http://192.168.72.132:5000/upload -X POST`

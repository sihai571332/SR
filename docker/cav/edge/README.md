# Before Running the 'buildrun.sh' Script
1. Two files are too big to put in the repository, so you cannot run
the 'buildrun.sh' script correctly without those two files.

2. Those two files are 'yolov3.weight' and 'yolo.h5'.

You need to download the 'yolov3.weight' first and do something to covert it to 'yolo.h5'.
See the README file in 'detection' folder for details.

# Usage
Before run the 'buildrun.sh' script, please make a few changes to the following files.

1. change the broker url in broadcast/pub.py to the actual broker IP address you are
going to use.

e.g., In the file broadcast/pub.py

	brocker_url='192.168.111.111'	

where 192.168.111.111 is the broker IP address

2. change the vehicle IP address in grab/grab.sh to the actual vehicle computer IP
address you are going to use.

e.g., In the file grab/grab.sh 

	wget -r -np http://192.168.33.22:9000

where 192.168.33.22 is your vehicle IP address

3. After the changes, start the vehicle service first and run the 'buildrun.sh' script

$ bash buildrun.sh

# Usage
Before run the 'run.sh' script, please make a few changes to the following files.

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

3. After the changes, dont't forget to rebuild the docker images

$ bash build.sh

4. then start the vehicle service and run the 'run.sh' script

$ bash run.sh

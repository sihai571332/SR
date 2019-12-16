# Usage
1. Put the broker IP address and port inside the file bip/ip.txt.

e.g., 192.168.22.22:1111

where 192.168.22.22 is the brocker url and 1111 is the port. Please make
sure the brocker urls are the same in both vehicle and edge computers.

2. if you made any change to python programs except the main.py, run the 'build.sh' 
script first, otherwise skip to step 3.

$ bash build.sh

3. run the 'run.sh' script.

$ bash run.sh

4. And put some images in the new-created folder 'shared_folder'. 

Hints: You'd better put images that can be stitched into one. Because so far
this framework only handles that situation well and gives you the workflow of
this framework. If random images are put in the 'shared_folder', it still works 
but no result is gonna reflected in the 'feedback' folder as the edge failed to
produce desirable output.

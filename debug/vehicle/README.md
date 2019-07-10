# Usage
1. A change needs to be made to the file subscribe/sub.py and that is
changing the brocker_url in that file.

e.g., In the file subscribe/sub.py

	brocker_url = '192.168.44.22'

where 192.168.44.22 is the brocker url you are going to use. Please make
sure the brocker urls are the same in both vehicle and edge computers.

2. if you made any change, run the 'build.sh' script first, otherwise skip to
step 3.

$ bash build.sh

3. run the 'run.sh' script.

$ bash run.sh

4. And put some images in the new-created folder 'shared_folder'. 

Hints: You'd better put images that can be stitched into one. Because so far
this framework only handles that situation well and gives you the workflow of
this framework. If random images are put in the 'shared_folder', it still works 
but no result is gonna reflected in the 'feedback' folder as the edge failed to
produce desirable output.

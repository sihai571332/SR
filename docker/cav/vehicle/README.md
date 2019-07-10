# Usage
0. Go to the bip/ folder and change the existed broker url/ip in the 'ip.txt' 
file to the broker url you are going to use.

1. run the 'run.sh' script.

$ bash run.sh

2. And put some images in the new-created folder 'shared_folder'. 

Hints: You'd better put images that can be stitched into one. Because so far
this framework only handles that situation well and gives you the workflow of
this framework. If random images are put in the 'shared_folder', it still works 
but no result is gonna reflected in the 'feedback' folder as the edge failed to
produce desirable output.

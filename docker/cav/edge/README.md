# Usage
1. Go to the bip/ directory, change the existed broker url in the file 
'ip.txt' to the broker url you are going to use.

2. Go to the vip/ directory, change the existed IP in the file 'ip.txt' 
to the vehicle IP you are going to use. 

3. Run the 'run.sh' script

$ bash run.sh

# Notice
1. if you are suffering an error like 'exec formt error', it's becausethe docker images are built on a specific architecture, if your machine doesn't match the same architecture, it is not going to run as expected. In that case, you may need to go back to the 'debug/edge' folder to use the build.sh to rebuild all images on your machine and run again.

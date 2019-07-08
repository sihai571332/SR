#! /bin/bash

# delete all stopped containers
docker rm $(docker ps -a -q)

# 3) store paths which are to be mounted with containers
cd rawdata
grab_path=`pwd`

cd ../fusioned
fusion_img_path=$grab_path
fusion_output_path=`pwd`

cd ../result
broadcast_path=`pwd`

cd ..

# 4) run these containers
#
# run grab container
docker run -v $grab_path:/rawdata edge/grab

# run fusion container
docker run -v $fusion_img_path:/images -v $fusion_output_path:/output edge/fusion

# run detection container
docker run --name ed -v $fusion_output_path:/image -it edge/detection
docker cp ed:/src/out.jpg result/

# run broadcast container
docker run -v $broadcast_path:/result edge/broadcast


#! /bin/bash

# 1) delete all stopped containers
docker rm $(docker ps -a -q)

# 2) create directories
if [ -d 'rawdata' ]
then
	rm rawdata -rf
fi
mkdir rawdata

if [ -d 'fusioned' ]
then
	rm fusioned -rf
fi
mkdir fusioned

if [ -d 'result' ]
then
	rm result -rf
fi
mkdir result

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
docker run --network host -v $grab_path:/rawdata edge/grab

# run fusion container
docker run -v $fusion_img_path:/images -v $fusion_output_path:/output edge/fusion

# run detection container
docker run --name ed -v $fusion_output_path:/image -it edge/detection
docker cp ed:/app/out.jpg result/

# run broadcast container
docker run --network host -v $broadcast_path:/result edge/broadcast


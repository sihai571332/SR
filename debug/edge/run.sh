#! /bin/bash

# 0) check if vehicle and broker IP files exist
if [ ! -e 'bip/ip.txt' ]
then
	echo 'bip/ip.txt missing'
	exit 1
fi

if [ ! -e 'vip/ip.txt' ]
then
	echo 'vip/ip.txt missing'
	exit 1
fi

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

cd ../bip
brokerip_path=`pwd`

cd ../vip
vehicleip_path=`pwd`

cd ..

# 4) run these containers
#
# run grab container
#docker run --network host -v $grab_path:/rawdata -v $vehicleip_path:/vip thatape/ecf_edge:grab
docker run --network host -v $grab_path:/rawdata -v $vehicleip_path:/vip st571332/ecf_edge:grab

# run fusion container
#docker run -v $fusion_img_path:/images -v $fusion_output_path:/output thatape/ecf_edge:fusion
docker run -v $fusion_img_path:/images -v $fusion_output_path:/output st571332/ecf_edge:fusion

# run detection container
#docker run --name ed -v $fusion_output_path:/image thatape/ecf_edge:detection
docker run --name ed -v $fusion_output_path:/image st571332/ecf_edge:detection

docker cp ed:/app/out.jpg result/
#cp result/out.jpg .

# run broadcast container
#docker run --network host -v $broadcast_path:/result -v $brokerip_path:/bip thatape/ecf_edge:broadcast
docker run --network host -v $broadcast_path:/result -v $brokerip_path:/bip st571332/ecf_edge:broadcast


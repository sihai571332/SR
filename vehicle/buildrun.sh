sudo docker build -t vehicle .

cd ..
if [ -e "shared_folder_vehicle" ]
then
    rm shared_folder_vehicle -rf
fi
mkdir shared_folder_vehicle
cd shared_folder_vehicle

sudo docker run --rm --name vs -p 5000:5000 -v `pwd`:/sf vehicle

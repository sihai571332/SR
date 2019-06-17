sudo docker build -t vehicle .

cd ..
if [ -e "shared_folder" ]
then
    rm shared_folder -rf
fi
mkdir shared_folder
cd shared_folder

sudo docker run --rm --name vs -p 5000:5000 -v `pwd`:/sf vehicle

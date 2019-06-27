sudo docker build -t edge .

cd ..
if [ -e "shared_folder_edge" ]
then
    rm shared_folder_edge -rf
fi
mkdir shared_folder_edge
cd shared_folder_edge

sudo docker run --rm --name edge -v `pwd`:/sf edge

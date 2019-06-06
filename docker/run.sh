# run an image
docker run ubuntu # this runs nothing before termination

# run an image with commands attached
docker run ubuntu echo "hello from ubuntu"

# run an image under interactive shell
docker run -it ubuntu

# delte the container once it is done
docker run --rm ubuntu

# run the container in a detached mode
# -d : detached mode activated
# -P : all exposed ports published
# --name : container name we give
docker run -d -P --name [container_name] [image_name]

# port issue
# 8888 is the externally exposed port
# 5000 is the server port inside the container
docker run -p 8888:5000 [image_name]

# stop a detached running container
sudo docker stop [detached_container_name]

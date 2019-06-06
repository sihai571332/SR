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

# stop a detached running container
sudo docker stop [detached_container_name]

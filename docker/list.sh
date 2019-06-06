### playing with docker ###

# pull an image (e.g. ubuntu, in this file)
docker pull ubuntu

# see the docker images in local system
docker images

# see the running containers
docker ps

# see the stopped containers
docker ps -a

# save the changes done on one container to a new image
docker commit [container_id] [new_image_name]

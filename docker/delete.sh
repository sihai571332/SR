# delete a stopped container
docker rm [container_id] 

# delete exited containers
docker rm $(docker ps -a -q -f status=exited)

# delete all containers for good
docker container prune

# delete images, use 'rmi' instead of 'rm'



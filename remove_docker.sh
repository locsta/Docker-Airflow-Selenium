sudo docker-compose down
sudo docker rm $(docker container ls -aq)
docker rmi -f $(docker image ls -aq)
echo "List of Docker images:"
docker image ls

# docker rmi -f $(docker images "sel*/*" -q)
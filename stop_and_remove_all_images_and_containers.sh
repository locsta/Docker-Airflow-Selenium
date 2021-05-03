sudo docker-compose down
sudo docker rm $(docker container ls -aq)
docker rmi -f $(docker image ls -aq)
#!/bin/sh
sudo apt-get clean
sudo apt-get autoremove --purge
docker rm $(docker ps -a -q)
docker rmi $(docker images | grep "<none>" | awk "{print $3}")
docker system prune --volumes --force
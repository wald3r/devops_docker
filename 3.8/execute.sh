#!/bin/bash


sudo docker build -t server_image ./server
sudo docker build -t redis_image ./redis

sudo docker swarm leave --force
sudo docker swarm init
sudo docker stack deploy --compose-file docker-compose.yml project



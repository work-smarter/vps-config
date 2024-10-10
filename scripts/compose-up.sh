#!/bin/bash

docker compose down
export DOCKER_SOCK_GROUP_ID=$(stat -c '%g' /var/run/docker.sock)
docker compose up -d
#!/bin/bash

echo "Building Jenkins Docker image..."
docker build -t jenkins-docker -f ./docker/Dockerfile_jenkins .
export DOCKER_SOCK_GROUP_ID=$(stat -c '%g' /var/run/docker.sock)
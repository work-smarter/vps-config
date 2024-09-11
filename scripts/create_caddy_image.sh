#!/bin/bash

# Build the caddy image
docker build -t caddy -f docker/Dockerfile_caddy .
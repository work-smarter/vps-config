#!/bin/bash

# Build the builder image for wt apps
cd ../docker
docker build -t wt_builder -f docker/Dockerfile_wt_builder .
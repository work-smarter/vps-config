#!/bin/bash

echo "Removing WT Builder Docker image..."
docker build -t wt_builder -f dockerfiles/Dockerfile_wt_builder .

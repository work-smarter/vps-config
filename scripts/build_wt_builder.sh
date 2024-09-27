#!/bin/bash

echo "Removing WT Builder Docker image..."
docker build -t wt_builder -f docker/Dockerfile_wt_builder .

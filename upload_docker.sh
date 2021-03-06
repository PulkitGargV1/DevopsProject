#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath

dockerpath="gargpulkit/flask_app"

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag flask_app $dockerpath

# Push image to a docker repository

docker image push $dockerpath 


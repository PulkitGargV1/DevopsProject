#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="gargpulkit/flask_app"

# Run the Docker Hub container with kubernetes
kubectl run flaskapp\
	--generator=run-pod/v1\
	--image=$dockerpath\
	--port=80

# List kubernetes pods
kubectl get pods 

# Forward the container port to a host
kubectl port-forward flaskapp 8000:80


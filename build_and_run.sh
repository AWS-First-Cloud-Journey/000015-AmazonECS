#!/bin/bash

# Define the Docker image name
IMAGE_NAME="aws-fcj-management"

# Build the Docker image
docker build -t $IMAGE_NAME .

# Run the Docker container
docker run -d -p 5000:5000 --name $IMAGE_NAME $IMAGE_NAME

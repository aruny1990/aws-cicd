#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
#echo
docker pull arunyadav12/simple-python-flask-app

# Run the Docker image as a container
#echo
docker run -d -p 5000:5000 arunyadav12/simple-python-flask-app

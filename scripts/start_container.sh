#!/bin/bash
set -e

# Stop and remove any container using port 5000
existing_container=$(docker ps -q --filter "publish=5000")

if [ -n "$existing_container" ]; then
  echo "Stopping container using port 5000: $existing_container"
  docker rm -f $existing_container
fi

docker pull arunyadav12/simple-python-flask-app

# Start the new container
docker run -d --name flask-app -p 5000:5000 arunyadav12/simple-python-flask-app

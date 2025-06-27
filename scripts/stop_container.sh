#!/bin/bash
set -e
echo "[INFO] Running stop_container.sh"

# Your actual stop logic here
docker stop sample-python-app || true

#!/bin/bash

echo "starting deployments......"

git pull origin main 

docker buildx build -t myapp:01

docker stop myapp  || true

docker rmi myapp || true

docker run -d --name myapp -p 8083:8083 myapp:01

echo "deployment completed"
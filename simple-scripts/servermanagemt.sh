#!/bin/bash
#script to update your system and installed packages
sudo apt update
sudo apt upgrade -y
#uodate docker containers (if available)
docker-compose -f /path/to/docker-compose.yaml pull
docker-compose -f /path/to/docker-compose.yaml up -d
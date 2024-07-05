#!/bin/bash

# Stop all running containers
docker ps -q | xargs -r docker stop

# Remove all containers
docker ps -a -q | xargs -r docker rm

# Remove all images
docker images -q | xargs -r docker rmi -f

# Remove all volumes
docker volume ls -q | xargs -r docker volume rm

# Remove all networks except default ones
docker network ls | grep -v "bridge\|host\|none" | awk '{print $1}' | xargs -r docker network rm

# Uninstall Docker
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce

# Remove Docker directories
sudo rm -rf /var/lib/docker /etc/docker
sudo rm -rf /var/run/docker.sock

# Remove Docker Compose
sudo rm /usr/local/bin/docker-compose

# Update package index
sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Start Docker and enable it to start at boot
sudo systemctl start docker
sudo systemctl enable docker

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verify installations
docker --version
docker-compose --version

echo "Docker and Docker Compose have been reset and reinstalled."

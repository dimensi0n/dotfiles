#!/bin/bash
# Remove existing docker
sudo apt-get remove docker docker.io containerd runc

# Update and install dependencies
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Set up repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update and install docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Create docker group and add the user
sudo groupadd docker
sudo usermod -aG docker $USER

# Get docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "Done! You'll have to log out and log in to activate group changes"

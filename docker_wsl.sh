#!/bin/bash

set -e

echo "Updating packages..."
sudo apt update

echo "Installing prerequisites..."
sudo apt install -y ca-certificates curl gnupg

echo "Creating Docker keyring directory..."
sudo mkdir -p /etc/apt/keyrings

echo "Installing Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor > docker.gpg

sudo mv docker.gpg /etc/apt/keyrings/docker.gpg

sudo chmod 644 /etc/apt/keyrings/docker.gpg

echo "Adding Docker repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Updating package cache..."
sudo apt update

echo "Installing Docker..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Adding current user to docker group..."
sudo usermod -aG docker $USER

echo ""
echo "Docker installation completed."
echo ""
echo "Run:"
echo "  newgrp docker"
echo "  docker run hello-world"
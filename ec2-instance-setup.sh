#!/bin/bash

set -e

echo "Updating package index..."
sudo apt update -y

echo "Installing Docker Compose (v1)..."
sudo apt install -y docker-compose

echo "Cloning Devops-first-project repository..."
git clone https://github.com/mangeshmule-devops/Devops-first-project.git

echo "Adding ubuntu user to docker group..."
sudo usermod -aG docker ubuntu

echo "Setup completed successfully!"
echo "IMPORTANT: Log out and log back in for docker group changes to take effect."

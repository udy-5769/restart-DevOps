#!/bin/bash

# 1. Update the system
echo "Updating system..."
sudo apt update -y

# 2. Install Nginx
echo "Installing Nginx..."
sudo apt install nginx -y

# 3. Start and Enable Nginx
echo "Starting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

# 4. Copy our website to the Nginx folder
echo "Deploying website content..."
sudo cp index.html /var/www/html/index.html

echo "✅ Deployment Successful! Check your IP."

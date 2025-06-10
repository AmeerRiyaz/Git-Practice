#!/bin/bash
# linux-prereq.sh
# Run this inside WSL as: bash linux-prereq.sh

set -e

echo "Updating package index..."
sudo apt update && sudo apt upgrade -y

echo "Installing basic tools..."
sudo apt install -y build-essential curl git unzip zip wget python3 python3-pip net-tools htop

echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable docker
sudo usermod -aG docker $USER

echo "Installing NVM and Node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

echo "Installing global npm tools..."
npm install -g yarn pm2

echo "✅ Linux (WSL) prerequisites installed! Please restart your terminal."

#!/usr/bin/env bash

# Remove lock from apt
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# Update repositories
sudo apt update

# Install curl
sudo apt install curl -y &&

  # Install dependencies nvm
  sudo apt install build-essential libssl-dev -y &&

  # Install NVM
  if [ -d "$NVM_DIR" ]; then
    echo "nvm is already installed"
  else
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
  fi

if [ -f ~/.bashrc ]; then
  source $HOME/.bashrc
  echo "File \"~/.bashrc\" exists"
fi

if [ -f ~/.zshrc ]; then
  source $HOME/.zshrc
  echo "File \"~/.zshrc\" exists"
fi

# Install Node.js LTS
nvm install --lts &&

  # Install Snapd
  sudo apt install snapd snapd-xdg-open &&

  # Install chromium
  sudo snap install chromium &&

  # Install Visual Studio Code
  sudo snap install code --classic &&

  # Install Insomnia
  sudo snap install insomnia &&

  # Database manager Beekeeper Studio
  sudo snap install beekeeper-studio

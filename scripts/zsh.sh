#!/bin/bash
# Install zsh
sudo apt install zsh curl

# Copy config file
cp config/zsh/.zshrc ~/.zshrc

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

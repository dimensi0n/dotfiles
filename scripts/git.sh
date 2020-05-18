#!/bin/bash
# Install git
sudo apt install git

# Config git
git config --global user.email "e-roussel@outlook.com"
git config --global user.name "Erwan ROUSSEL"

# Add ssh key
ssh-keygen -t rsa -b 4096 -C "e-roussel@outlook.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

echo "Done! SSH key copied to clipboard"

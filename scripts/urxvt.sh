#!/bin/bash
# Install urxvt
sudo apt install rxvt-unicode

# Copy configuration
cp config/urxvt/.Xresources ~/.Xresources

# Load configuration file
xrdb ~/.Xresources

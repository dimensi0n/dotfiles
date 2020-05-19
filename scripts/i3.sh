#!/bin/bash
# Install i3
sudo apt install i3

# Install i3-gaps
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt install i3-gaps

# Copy config
mkdir ~/.config && mkdir ~/.config/i3
cp config/i3/config ~/.config/i3


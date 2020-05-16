#!/bin/bash
# Clone and instal
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git

cp build/* ~/.fonts
fc-cache -fv ~/.fonts

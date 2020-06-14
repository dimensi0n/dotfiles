#!/bin/bash
# Clone and instal
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git

cp awesome-terminal-fonts/build/* ~/.fonts
cp fonts/truetype/* /usr/share/fonts/truetype
fc-cache -fv ~/.fonts

#!/bin/bash
# Install vim
sudo apt install vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy config file
cp config/vim/.vimrc ~/.vimrc

# Say to run :PlugInstall
echo "Done! Run :PlugInstall to install plugins"

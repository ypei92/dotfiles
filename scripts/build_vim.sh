#!/bin/bash

# Git clone
git clone https://github.com/vim/vim.git
cd vim/src

# Config with python3 support
./configure --with-features=huge --enable-python3interp
make
sudo make install

# Remove repo
cd ../../
rm -rf vim

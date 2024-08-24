#!/bin/bash

# manual setup step as user (not for auto execution)
mv .bashrc .bashrc_origin
sudo apt install yadm
yadm clone https://github.com/ypei92/dotfiles.git

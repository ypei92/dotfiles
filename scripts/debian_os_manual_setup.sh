#!/bin/bash
#############################################
# Assign static ipv4 address in PVE console #
#############################################

#############################################################
# As root during first boot in PVE console: re-gen ssh keys #
#############################################################
dpkg-reconfigure openssh-server

###########
# As user #
###########
# manual setup step as user (not for auto execution)
mv .bashrc .bashrc_origin
sudo apt install yadm
yadm clone https://github.com/ypei92/dotfiles.git

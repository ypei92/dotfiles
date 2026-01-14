#!/bin/bash

##########################################
# Setup Debian/Ubuntu CT tempate as root #
##########################################
# update
apt update && apt dist-upgrade
apt install sudo

# setup locale
locale-gen "en_US.UTF-8"
dpkg-reconfigure locales

# clean up apt
apt clean && apt autoremove

# clean up ssh and temp
rm /etc/ssh/ssh_host_*
rm -rf /tmp/*

# create ypei and add to the sudo group
adduser ypei
usermod -aG sudo ypei

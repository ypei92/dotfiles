#!/bin/bash

##########################################
# Setup Debian/Ubuntu CT tempate as root #
##########################################
# create user ypei and shanhex
apt update && apt dist-upgrade
apt install sudo

# create ypei and add to the sudo group
adduser ypei
usermod -aG sudo ypei

# setup locale
locale-gen "en_US.UTF-8"
dpkg-reconfigure locales

# clean up apt
apt clean && apt autoremove

# clean up ssh keys, machine ID
truncate -s 0 /etc/machine-id
rm /etc/ssh/ssh_host_*
rm -rf /tmp/*

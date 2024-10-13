#!/bin/bash

# setup service
sudo apt update
sudo apt install -y openssh-client openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh

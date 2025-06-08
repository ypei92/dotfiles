#!/bin/bash

# Add the repository:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg -y
curl -sSL https://pkgs.netbird.io/debian/public.key | sudo gpg --dearmor --output /usr/share/keyrings/netbird-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/netbird-archive-keyring.gpg] https://pkgs.netbird.io/debian stable main' | sudo tee /etc/apt/sources.list.d/netbird.list

# Update APT cache
sudo apt-get update

# Install core and ui
sudo apt-get install netbird  # for CLI only
sudo apt-get install netbird-ui # for GUI package

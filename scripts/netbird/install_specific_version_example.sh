#!/bin/bash

# 1. Download the working version
wget https://github.com/netbirdio/netbird/releases/download/v0.64.1/netbird_0.64.1_linux_amd64.tar.gz

# 2. Extract it
tar -xzf netbird_0.64.1_linux_amd64.tar.gz

# 3. Install it manually (overwrite the current broken one)
sudo mv netbird /usr/local/bin/netbird
sudo chown root:root /usr/local/bin/netbird
sudo chmod +x /usr/local/bin/netbird

# 4. Start the service
sudo netbird service install
sudo netbird service start
sudo netbird service status

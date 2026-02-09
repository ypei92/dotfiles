#!/bin/bash

netbird down
curl -fsSLO https://pkgs.netbird.io/install.sh
chmod +x install.sh
./install.sh --update
netbird up

#!/bin/bash

echo "Installing AUTOMATIC1111/stable-diffusion-webui ..."

echo "Installing tcmalloc ..."
sudo apt-get install -y google-perftools

echo "Installing official dependencies, assuming Python is taken cared via conda ..."
sudo apt install wget git libgl1 libglib2.0-0

echo "Initial installation via webui.sh ..."
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui
./webui.sh --listen

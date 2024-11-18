#!/bin/bash

docker run -d -p 8000:8000 \
              -p 9443:9443 \
              --name portainer \
              --restart=always \
              -v /var/run/docker.sock:/var/run/docker.sock \
              -v /home/ypei/libraries/docker/portainer:/data \
              portainer/portainer-ce:2.21.0

#!/bin/bash

source $HOME/scripts/stable-diffusion-webui/.env

SD_WEBUI_CACHE_DIR=/tmp/cache ./webui.sh \
  --listen \
  --port $PORT \
  --xformers \
  --data-dir=${DATA_DIR} \
  --update-check \
  --update-all-extensions

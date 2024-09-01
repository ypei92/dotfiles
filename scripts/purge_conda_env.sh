#!/bin/bash

env_name=$CONDA_DEFAULT_ENV
default_python_version=3.10
python_version="${1:-$default_python_version}"

# deactivate, delete, re-create and activate
conda deactivate
conda remove -n $env_name -y --all
conda create -n $env_name -y python=$python_version
conda activate $env_name

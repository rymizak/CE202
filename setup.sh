#!/bin/bash

# Run: 'bash setup.py'

git clone https://github.com/rymizak/CE202
sudo apt-get install -y r-base
cd CE202
docker build -t run . --no-cache
cd ..

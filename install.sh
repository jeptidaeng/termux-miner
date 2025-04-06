#!/bin/bash

set -e
echo "Updating and installing required things"
apt update && apt upgrade -y
apt install wget
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd termux-miner
chmod 777 install.sh
# Basic *nix build instructions:
echo "./install.sh"
if ! ./build-linux-arm.sh ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
    ./build-linux-arm.sh ..
fi
# compile
echo "Compiling now"
if ! build-linux-arm.sh; then
    echo "Error: Compiling failed"
    exit 1
else
    build-linux-arm.sh && echo "Done... you can use run script now"
fi
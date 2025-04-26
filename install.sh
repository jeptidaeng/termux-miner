#!/bin/bash

set -e
echo "Updating and installing required things"
apt install wget
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool -y
# automake
echo "Basic *nix build instructions"
if ! build-linux-arm.sh ..; then
    echo "Error: CMake configuration failed"
    exit 1
else
    ./build-linux-arm.sh ..
fi
# compile
echo "Compiling now"
if ! automake; then
    echo "Error: Compiling failed"
    exit 1
else
    make && echo "Done... you can use run script now"
fi

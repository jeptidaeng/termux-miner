#!/bin/bash
echo "Updating and installing required things"
apt update && apt upgrade -y
apt install wget
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner

# Basic *nix build instructions:
echo "./install.sh"
if ! ./build-linux-arm.sh ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
     build-linux-arm.sh ..
fi
# compile
echo "Compiling now"
if !  build-linux-arm.sh; then
    echo "Error: Compiling failed"
    exit 1
else
     echo "start the miner with \"cd ~/termux-miner; ~/cpuminer/cpuminer -c ~/cpuminer/cpuminer-conf.json
\"."
fi

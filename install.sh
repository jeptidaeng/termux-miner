#!/bin/bash
echo "Updating and installing required things"
apt update && apt upgrade -y
apt install wget
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool
# Basic *nix build instructions:
echo "./install.sh"
if ! ./build.sh ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
     ./build-linux-arm.sh ..
fi
# compile
echo "Compiling now"
if !    ; then
    echo "Error: Compiling failed"
    exit 1
else
   echo "Done... you can use run script now"
fi

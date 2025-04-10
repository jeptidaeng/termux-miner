#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
echo "Creating configure..."
apt update && apt upgrade -y
apt-get install curl git wget nano -y
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool -y
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner
# Basic *nix build instructions:
echo "./install.sh"
if ! ./build-linux-arm.sh ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
      ..
fi
# compile
echo "Compiling now"
if !    ; then
    echo "Error: Compiling failed"
    exit 1
else
   echo "Done... you can use run script now"
fi

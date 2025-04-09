#!/bin/bash
echo "Updating and installing required things"
apt update && apt upgrade -y
apt install git -y
apt install wget -y 
apt install nano -y
apt install git wget nano gh tmate build-essential make m4 libcurl4-openssl-dev libjansson-dev automake autoconf libtool autotools-dev cmake zlib1g-dev openssl libssl-dev -y
echo "Cloning and starting compiling"
cd && git clone https://github.com/wong-fi-hung/termux-miner && cd termux-miner
# Basic *nix build instructions:
echo "make -j4"
if ! ./build-linux-arm.sh ..; then
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

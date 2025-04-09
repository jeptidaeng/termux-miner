#!/bin/bash
echo "Updating and installing required things"
apt update && apt upgrade -y
apt install git -y
apt install wget -y 
apt install nano -y
echo "Cloning and starting compiling"
git clone https://github.com/wong-fi-hung/termux-miner.git
cd ~/termux-miner
# Basic *nix build instructions:
echo "./install.sh"
if ! ./build-linux-arm.sh ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
     ./build-linux-arm.sh ..
fi
# compile
echo "Make"
if ! make -j4   ; then
    echo "Error: Compiling failed"
    exit 1
else
   echo "Done... you can use run script now"
fi

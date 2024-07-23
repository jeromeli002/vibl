#! /bin/sh

apt update
apt install -y cmake gcc-arm-none-eabi git

git clean -dfx
git reset --hard HEAD

cd bootloader
mkdir build && cd build
cd build

cmake .. 

make



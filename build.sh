#! /bin/sh

apt update
apt install -y cmake gcc-arm-none-eabi git


cd bootloader
mkdir build
cd build

cmake .. 

make -j8

truncate -s 512 *.bin

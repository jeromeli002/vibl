#! /bin/sh

apt update
apt install -y cmake gcc-arm-none-eabi git


cd bootloader
mkdir build
cd build

cmake .. -DCMAKE_TOOLCHAIN_FILE=../toolchain/gcc.cmake

make


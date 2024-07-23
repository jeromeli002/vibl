#! /bin/sh

apt update
apt install -y cmake gcc-arm-none-eabi git

git clean -dfx
git reset --hard HEAD

cd bootloader
mkdir build && cd build
cd build

cmake .. -DCMAKE_TOOLCHAIN_FILE=../toolchain/gcc.cmake

make

truncate -s 512 *.bin

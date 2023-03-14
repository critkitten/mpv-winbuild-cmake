#!/bin/bash
mkdir build64
cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..

echo "build toolchain and mpv"
echo "ninja gcc"
echo "ninja mpv"
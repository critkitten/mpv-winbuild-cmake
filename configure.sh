#!/bin/bash
mkdir build64
cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..

echo "build toolchain and mpv"
echo "ninja gcc"
#!/bin/bash

echo "pacman -S git gyp mercurial subversion ninja cmake meson ragel yasm nasm asciidoc enca gperf unzip p7zip gcc-multilib clang python-pip curl lib32-glib2"
echo "pip3 install rst2pdf mako jsonschema"

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

mkdir build64
cd build64

cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..

echo "ninja gcc"
echo "ninja mpv"


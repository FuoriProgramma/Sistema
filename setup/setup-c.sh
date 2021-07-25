#!/bin/bash

sudo apt update

echo "Installing Sublime text editor..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

echo "Installing LLVM Toolchain..."
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-12 main" | sudo tee /etc/apt/sources.list.d/llvm-toolchain.list
sudo apt update
sudo apt install clang-12 clangd-12 lld-12 lldb-12

echo "export CC=clang-12" >> $HOME/.zshrc
echo "export CXX=clang++-12" >> $HOME/.zshrc
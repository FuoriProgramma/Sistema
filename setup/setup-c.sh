#!/bin/bash

echo "Installing All packages..."
sudo apt update
sudo apt install -y cmake ninja-build clang clangd lld lldb clang-format clang-tidy

echo "export CC=clang-12" >> $HOME/.zshrc
echo "export CXX=clang++-12" >> $HOME/.zshrc

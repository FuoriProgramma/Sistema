#!/bin/bash

echo "Installing All packages..."
sudo apt update
sudo apt install -y cmake ninja-build clang clangd lld lldb clang-format clang-tidy

echo "export CC=clang" >> $HOME/.zshrc
echo "export CXX=clang++" >> $HOME/.zshrc

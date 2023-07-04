#!/bin/zsh

echo "Install Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Install Node LTS version"
n lts

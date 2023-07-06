#!/bin/zsh

echo "Update Homebrew"
brew update && brew upgrade

echo "Update Rust"
rustup update

echo "Update pyenv"
pyenv update

echo "You might want to update pip using Python with: python3 -m pip install --upgrade pip"


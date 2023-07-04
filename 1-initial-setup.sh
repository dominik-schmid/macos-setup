#!/bin/zsh

echo "Install Xcode CLI tools"
xcode-select --install

echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

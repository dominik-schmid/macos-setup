#!/bin/zsh

echo "Install Xcode CLI tools"
xcode-select --install

echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install Ansible and Ansible lint"
brew install ansible
brew install ansible-lint

# https://swissmacuser.ch/show-macos-dock-instantly-without-delay/
echo "Configure Dock to show it instantly without a delay"
defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.4 && killall Dock

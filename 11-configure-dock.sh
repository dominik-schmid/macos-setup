#!/bin/zsh

# https://swissmacuser.ch/show-macos-dock-instantly-without-delay/
echo "Configure Dock to show it instantly without a delay"
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

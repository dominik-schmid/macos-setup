# https://swissmacuser.ch/show-macos-dock-instantly-without-delay/
echo "Configure Dock to show it instantly without a delay"
defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.4 && killall Dock

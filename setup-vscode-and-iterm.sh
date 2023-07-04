echo ""
echo "Install VS Code config"
chmod +x vscode-settings/install-config.sh
./vscode-settings/install-config.sh

echo ""
echo "You need to configure iTerm2 to use the copied config. Go to iTerm2 -> Preferences -> General -> Preferences, enable 'Load preferences from a custom folder or URL'"
echo "and use this folder: ~/.config/iterm2"

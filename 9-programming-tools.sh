#!/bin/zsh

echo "Install Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Install Node LTS version"
n lts

echo "Generate new GPG keys for git commit signing"
echo "If you need further information please visit: https://docs.github.com/de/authentication/managing-commit-signature-verification/generating-a-new-gpg-key"
gpg --full-generate-key

echo "List keys and copy the ID manually"
gpg --list-secret-keys --keyid-format=long

echo "Paste the ID as new signingkey in ~/.gitconfig"

echo "Export the key with following code and paste it in https://github.com/settings/tokens: gpg --armor --export 3AA5C34371567BD2 | pbcopy"

echo "Install VS Code config"
chmod +x vscode-settings/install-config.sh
./vscode-settings/install-config.sh

echo "You need to configure iTerm2 to use the copied config. Go to iTerm2 -> Preferences -> General -> Preferences, enable 'Load preferences from a custom folder or URL'"
echo "and use this folder: ~/.config/iterm2"
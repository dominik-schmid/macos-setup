#!/bin/zsh

echo "Backing up personal dotfiles"
rsync -av ~/.cargo/config.toml ~/.config ~/.gitconfig ~/.gnupg/gpg.conf ~/.gnupg/gpg-agent.conf ~/.profile ~/.zprofile ~/.zshenv ~/.zshrc ~/data/code/dotfiles-backup


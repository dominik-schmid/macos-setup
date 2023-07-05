#!/bin/zsh

echo "Copy the dotfiles to the home directory using rsync to keep the directory structure and copy hidden files and folders"
rsync -av --progress dotfiles/ ~

echo "Reload .zshrc"
source ~/.zshrc

echo "Create an empty folder where n (node package manager) can install Node"
mkdir -p ~/.local/n


#!/bin/zsh

echo "Backup the dotfiles from the home directory using rsync to keep the directory structure and copy hidden files and folders"
rsync -av --progress ~/ dotfiles/ ~

echo "Reload .zshrc"
source ~/.zshrc

echo "You need to back up your Rectangle config manually"
echo "Please, visit: https://github.com/rxhanson/Rectangle#import--export-json-config"


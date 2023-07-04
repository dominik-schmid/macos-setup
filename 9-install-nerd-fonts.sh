#!/bin/zsh

brew tap homebrew/cask-fonts

# When using `brew search nerd-font` there is at least one package that isn't a font. Therefore, I'm combining the search with grep.
brew search font | grep "nerd" | xargs -I{} brew install --cask {} || true

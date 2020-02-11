#!/bin/bash
sudo -v

## Set macOS system defaults and fonts
$(pwd)/defaults.sh
cp $(pwd)/fonts/* /Library/Fonts/

## Setup Homebrew
if test ! $(which brew); then
  sudo mkdir /usr/local/temp
  sudo chown -R "$USER":admin /usr/local
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade --all
brew bundle

brew services start koekeishiya/formulae/skhd
brew services start koekeishiya/formulae/yabai

open -a Paste
open -a Firefox\ Nightly
open -a The\ Unarchiver
open -a Dropbox
open -a Dozer
bash nerd-fonts/install.sh
## Symlink dotfiles
$(pwd)/links.sh
npm install -g spaceship-prompt
open -a iTerm

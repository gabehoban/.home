#!/bin/bash
sudo -v

## Install initial requirements 
sudo softwareupdate -ia --verbose
xcode-select --install

## Set macOS system defaults and fonts
$(pwd)/defaults.sh
cp $(pwd)/fonts/* /Library/Fonts/

## Setup Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade --all
brew bundle
clear

## Symlink dotfiles
$(pwd)/links.sh
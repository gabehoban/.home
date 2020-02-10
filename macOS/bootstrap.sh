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

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

open -a Paste
open -a Firefox\ Nightly
open -a iTerm
open -a The\ Unarchiver
open -a Dropbox
open -a Dozer

## Symlink dotfiles
$(pwd)/links.sh

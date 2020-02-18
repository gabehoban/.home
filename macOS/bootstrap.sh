#!/bin/bash
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

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
brew tap homebrew/bundle
brew bundle
brew services start koekeishiya/formulae/skhd
brew services start koekeishiya/formulae/yabai

## Open apps for permissions
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
chsh -s $(which zsh)

## Setup SSH
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

## Setup iTerm
cp ../iTerm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

#!/bin/bash

sudo rm -f ~/.zshrc

## User Config Folder
ln -sv ~/.dotfiles/.config ~

## Github Stuff
ln -sv ~/.dotfiles/git/.gitignore_global ~
ln -sv ~/.dotfiles/git/.gitconfig ~

## Window Manager
ln -sv ~/.dotfiles/yabai/.yabairc ~
ln -sv ~/.dotfiles/yabai/.skhdrc ~

## ZSH Shell
ln -sv ~/.dotfiles/.zsh ~
ln -sv ~/.dotfiles/.zsh/.zshrc ~

## Local Bin
ln -sv ~/.dotfiles/.bin ~

## Setup GPG
[ -d ~/.gnupg ] || mkdir -p ~/.gnupg
ln -sv ~/.dotfiles/gnupg/dirmngr.conf ~/.gnupg
ln -sv ~/.dotfiles/gnupg/gpg.conf ~/.gnupg

## Setup VisualCodeStudio settings
[ -d /Users/gabehoban/Library/Application\ Support/Code\ -\ Insiders/User ] || mkdir -p /Users/gabehoban/Library/Application\ Support/Code\ -\ Insiders/User
ln -sv ~/.dotfiles/code/settings.json /Users/gabehoban/Library/Application\ Support/Code\ -\ Insiders/User

## Setup iTerm Settings
ln -sv ~/.dotfiles/iTerm2/com.googlecode.iterm2.plist ~/Library/Preferences/

## macOS Privoxy config
ln -sv ~/.dotfiles/privoxy/config /usr/local/etc/privoxy/
ln -sv ~/.dotfiles/privoxy/user.action /usr/local/etc/privoxy/

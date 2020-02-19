#!/bin/bash

sudo rm -f ~/.zshrc

## User Config Folder
ln -sv ~/.dotfiles/.config ~
## Visual Code Studio
ln -sv ~/.dotfiles/.vscode ~
ln -sv ~/.dotfiles/.vscode-insiders ~
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

#!/bin/bash
sudo rm -f ~/.zshrc
ln -sv ~/.dotfiles/.config ~
ln -sv ~/.dotfiles/.fzf.zsh ~
ln -sv ~/.dotfiles/.skhdrc ~
ln -sv ~/.dotfiles/.vscode ~
ln -sv ~/.dotfiles/.vscode-insiders ~
ln -sv ~/.dotfiles/git/.gitignore_global ~
ln -sv ~/.dotfiles/git/.gitconfig ~
ln -sv ~/.dotfiles/.yabairc ~
ln -sv ~/.dotfiles/.zsh ~
ln -sv ~/.dotfiles/.zsh/.zshrc ~
ln -sv ~/.dotfiles/firefox/user.js ~/Library/Application\ Support/Firefox/Profiles/*.default-nightly/

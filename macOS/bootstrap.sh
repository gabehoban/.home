#!/bin/bash
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# -----------------------------------------------------------------------------
# Preparation: Install Xcode command line tools
# -----------------------------------------------------------------------------
function xcodeCli {
  echo "Installing command line developer tools ..."
  xcode-select --install
}

# -----------------------------------------------------------------------------
# Install package managers
# -----------------------------------------------------------------------------
function packageManagers {
  sudo mkdir /usr/local/temp
  sudo chown -R "$USER":admin /usr/local
  echo "Installing homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing cask ..."
  brew tap "homebrew/cask"

  echo "Installing homebrew bundle"
  brew tap "homebrew/bundle"
}

# -----------------------------------------------------------------------------
# Install npm packages
# -----------------------------------------------------------------------------
function node {
  echo "Installing Node Packages"
  mkdir -p ~/.npm-global
  npm install -g n
  n latest

  apps=$(cat "~/.dotfiles/packages/node/npm.txt")
  for app in $apps; do
    which $app > /dev/null
    if [ $? == 1 ]; then
      echo "Installing ${app}"
      npm install -g $app
    fi
  done
}

# -----------------------------------------------------------------------------
# Install Python Packages
# -----------------------------------------------------------------------------

function pip_install {
  REQUIREMENTS_FILE=~/.dotfiles/packages/python/requirements.txt
  pip3 install -r "$REQUIREMENTS_FILE"
}

# -----------------------------------------------------------------------------
# Install Ruby Gems
# -----------------------------------------------------------------------------

function ruby_gems {
  gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm
  gems=$(cat "~/.dotfiles/packages/ruby/gems.txt")

  echo 'Installing Ruby gems'
  for gem in $gems; do
    gem install $gem
  done
}

# -----------------------------------------------------------------------------
# Install software
# -----------------------------------------------------------------------------

function software {
  echo "Installing software ..."
  cd ~ && git clone https://github.com/gabehoban/.dotfiles
  brew bundle --file="~/.dotfiles/packages/brew/Tapfile"
  brew bundle --file="~/.dotfiles/packages/brew/Brewfile"
  brew bundle --file="~/.dotfiles/packages/brew/Caskfile"
  brew services start koekeishiya/formulae/skhd
  brew services start koekeishiya/formulae/yabai
  rm -f ~/Library/Preferences/com.apple.dock.plist
  ln -sv ~/.dotfiles/macOS/dock ~/Library/Preferences/com.apple.dock.plist
  killall Dock
}

# -----------------------------------------------------------------------------
# Install Code extensions
# -----------------------------------------------------------------------------

function codeExtensions {
  echo "Installing Code extensions ..."
  while read -r extension
  do
    if [[ "$extension" =~ \#.+ ]]
    then
      echo "Skipping ${extension}"
    else
      code-insiders --install-extension "$extension"
    fi
  done < "~/.dotfiles/code/Codefile"
}

# -----------------------------------------------------------------------------
# Setup Mac Defaults
# -----------------------------------------------------------------------------

function defaults {
  sudo $(pwd)/Defaults/defaults.sh
  cp -vf $(pwd)/fonts/*.ttf ~/Library/Fonts
  chsh -s $(which zsh)
}

# -----------------------------------------------------------------------------
# Setup GPG
# -----------------------------------------------------------------------------
function gpg {
  gpg --recv 0x643624EC29CEA355
}

# -----------------------------------------------------------------------------
# Link Files
# -----------------------------------------------------------------------------
function link {
  $(pwd)/setup/links.sh
}

# -----------------------------------------------------------------------------
# Setup SSH
# -----------------------------------------------------------------------------
function ssh {
  gpg -d -o ~/ssh.tar.gz ~/.dotfiles/gnupg/crypt/ssh.tar.gz.gpg
  tar -xzf /Users/gabehoban/ssh.tar.gz
  mv ~/Users/gabehoban/.ssh ~/.ssh
  rm -rdf ~/Users && rm -f ~/.ssh.tar.gz
}

# -----------------------------------------------------------------------------
# Open apps to setup dock / licenseKeys
# -----------------------------------------------------------------------------
function open {
  open -a Paste
  open -a Brave\ Browser\ Nightly
  open -a The\ Unarchiver
  open -a Dropbox
  open -a Dozer
  open -a iTerm
}

# -----------------------------------------------------------------------------
# RUN
# -----------------------------------------------------------------------------
xcodeCli
packageManagers
software
node
link
codeExtensions
ruby
pip_install
defaults
gpg
ssh
open

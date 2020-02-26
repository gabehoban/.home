
## System Exports
export TERM="xterm-256color"
export EDITOR='vim'
export LC_ALL="en_US.UTF-8"
export MANPAGER="less -X";
export GREP_OPTIONS="--color=auto";
export LESS_TERMCAP_md="${yellow}";
export GOPATH=~/go
export GOBIN=~/go/bin
export LESS='-F -g -i -M -R -S -w -X -z-4'
. /usr/local/etc/profile.d/z.sh

## History Settings
HIST_STAMPS="%d.%m.%y %H:%M:%S"
HISTFILE=~/.zhistory
setopt sharehistory
setopt histappend
setopt hist_ignore_space
setopt longlistjobs
setopt hist_verify

## ZSH Settings
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
setopt autocd
setopt glob_complete
setopt extendedglob

## Homebrew Settings
export HOMEBREW_TEMP=/usr/local/temp
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASKS_OPTS=--require-sha
export HOMEBREW_FORCE_BREWED_GIT=1
export HOMEBREW=/usr/local
fpath=("$HOMEBREW/share/zsh-completions" $fpath)
fpath=("$HOMEBREW/share/zsh/site-functions" $fpath)

## Path Exports
PATH="/usr/local/bin:/usr/local/sbin:$PATH"    # Local bin
PATH="$HOME/.bin:$PATH"                        # Home bin
PATH="$HOME/go/bin:$PATH"                      # Golang bin
export PATH

## Source dotfile utils
. "$HOME"/.zsh/vault.zsh
export BREWFILE="$HOME/.dotfiles/packages/brew/Brewfile"
export CASKFILE="$HOME/.dotfiles/packages/brew/Caskfile"
export MASFILE="$HOME/.dotfiles/packages/brew/Masfile"
export dots="$HOME/.dotfiles"


## GPG Exports
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
export KEYID=0x643624EC29CEA355

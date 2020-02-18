
## System Exports
export TERM="xterm-256color"
export EDITOR='nano'
export LC_ALL="en_US.UTF-8"
export MANPAGER="less -X";
export GREP_OPTIONS="--color=auto";
export LESS_TERMCAP_md="${yellow}";

## History Settings
export HISTTIMEFORMAT="%c"
SHELL_SESSION_HISTORY=0
HISTFILE=~/.zhistory
setopt sharehistory
setopt histappend
setopt hist_ignore_space

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

## Path Exports
PATH="/usr/local/bin:/usr/local/sbin:$PATH"    # Local bin
PATH="$HOME/.bin:$PATH"                        # Home bin
PATH="$HOME/go/bin:$PATH"                      # Golang bin
export PATH

## GPG Exports
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY="$(tty)"


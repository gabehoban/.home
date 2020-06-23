pathadd() {
    [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}

###########
# EXPORTS #
###########
PATH=/usr/local/bin:/usr/local/sbin":$PATH"
pathadd $HOME/.local/bin

export TERM="xterm-256color"
export EDITOR='nvim'
export LC_ALL="en_US.UTF-8"
export MANPAGER="less -X";
export GREP_OPTIONS="--color=auto";
export LESS_TERMCAP_md="${yellow}";
export LESS='-F -g -i -M -R -S -w -X -z-4'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export KEYID=0x643624EC29CEA355
#--

##########
# ZSTYLE #
##########
_comp_options+=(globdots)
zstyle ':completion:*:*:*:*:*' menu yes select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path  ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
#--

##########
# SETOPT #
##########
setopt \
auto_menu \
always_to_end \
complete_in_word \
hist_ignore_space \
extended_glob \
extended_history \
auto_pushd \
interactive_comments \
auto_cd \
glob_complete
#--

###########
# IMPORTS #
###########
. /usr/local/etc/profile.d/z.sh
#--

###########
# OPTIONS #
###########
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
export HOMEBREW_TEMP=/usr/local/temp
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASKS_OPTS=--require-sha
export HOMEBREW_CASKS_OPTS=--no-quarantine
export HOMEBREW_FORCE_BREWED_GIT=1
export HOMEBREW=/usr/local

fpath=("$HOMEBREW/share/zsh-completions" $fpath)
fpath=("$HOMEBREW/share/zsh/site-functions" $fpath)
#--


##############
# FILE ALIAS #
##############
export HOME='/Users/gabehoban'
export BREWFILE="$HOME/.dotfiles/packages/brew/Brewfile"
export CASKFILE="$HOME/.dotfiles/packages/brew/Caskfile"
export MASFILE="$HOME/.dotfiles/packages/brew/Masfile"
export TAPFILE="$HOME/.dotfiles/packages/brew/Tapfile"
export NODEFILE="$HOME/.dotfiles/packages/node/npm.txt"
export dots="$HOME/.dotfiles"
#--

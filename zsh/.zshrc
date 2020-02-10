# autoload -U compinit && compinit

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
export TERM="xterm-256color"
export EDITOR='nano'
export GPG_TTY="$(tty)"
export HOMEBREW_GITHUB_API_TOKEN=7151aba422c97deb5a7063e8ed354b978cc2cc4e
export HOMEBREW_TEMP=/usr/local/temp

export PATH="/usr/local/sbin:$PATH"

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export ZSH="/Users/gabehoban/.oh-my-zsh"
gpgconf --launch gpg-agent

source /Users/gabehoban/zsh/antigen.zsh
antigen use oh-my-zsh
antigen theme denysdovhan/spaceship-prompt
antigen bundle git
antigen bundle tmux
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle osx
antigen bundle fzf
antigen bundle git
antigen bundle gem
antigen bundle pip
antigen bundle npm
antigen bundle sudo
antigen bundle xcode
antigen bundle iterm2
antigen bundle python
antigen bundle extract
antigen bundle git-flow
antigen bundle zsh_reload
antigen bundle rand-quote
antigen bundle git-auto-fetch
antigen bundle colored-man-pages
antigen bundle zsh-brew-services
antigen bundle zsh-navigation-tools
antigen bundle history-substring-search
antigen bundle oow/macos
antigen bundle zpm-zsh/colors
antigen bundle Tarrasch/zsh-bd
antigen bundle desyncr/auto-ls
antigen bundle caarlos0/zsh-git-sync
antigen bundle chrissicool/zsh-256color
antigen bundle tarruda/zsh-autosuggestions                
antigen bundle felixr/docker-zsh-completion
antigen bundle sindresorhus/pretty-time-zsh
antigen bundle ascii-soup/zsh-url-highlighter
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes
antigen apply

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ls="ls"

source $ZSH/oh-my-zsh.sh
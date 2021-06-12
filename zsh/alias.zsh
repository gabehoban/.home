# Aliases

# Variables
CODE_DIR="$HOME/Code"
DROPBOX_DIR="$HOME/Dropbox"


# Maintenance
alias brewi="./setup/homebrew.zsh"
alias brewclean="brew bundle cleanup --force && brew cleanup && brew upgrade"
alias zclean="zinit self-update && zinit update && zinit delete --clean"
alias dotclean="brewclean && zclean"
alias yul="yarn upgrade --latest"

alias hbb="hub browse"
alias quit="exec $SHELL -l"
alias zz="source ~/.zshrc"
alias ll="exa -laFh --git"
alias ls="exa"
alias wifi="networksetup -setairportpower en0 off && networksetup -setairportpower en0 on"
alias play="chmod +x ./playground.sh && ./playground.sh"

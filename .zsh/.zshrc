if [ -z $TMUX ]; then; tmux; fi

autoload -U compinit && compinit
gpgconf --launch gpg-agent

## Dotfiles
export HOME='/Users/gabehoban'
dotfiles=(
    "$HOME"/.zsh/profile.zsh
    "$HOME"/.zsh/alias.zsh
    "$HOME"/.zsh/antigen_plugins.zsh
    "$HOME"/.zsh/spaceship_config.zsh
    "$HOME"/.zsh/functions.zsh
)
for file in ${dotfiles[@]}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
unset dotfiles
unsetopt PROMPT_SP

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

export PATH="/usr/local/opt/openjdk/bin:$PATH"

## Sourcing and stuff
eval "$(pyenv init -)"
eval "$(direnv hook zsh)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/gabehoban/.sdkman"
[[ -s "/Users/gabehoban/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/gabehoban/.sdkman/bin/sdkman-init.sh"

if [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
fi

gpgconf --launch gpg-agent

## Dotfiles
dotfiles=(
    "$HOME"/.zsh/.zprofile
    "$HOME"/.zsh/.zalias
    "$HOME"/.zsh/.zfunctions
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

## Sourcing and stuff
eval "$(direnv hook zsh)"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source $(dirname $(gem which colorls))/tab_complete.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

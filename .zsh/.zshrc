autoload -U compinit && compinit
gpgconf --launch gpg-agent

## Dotfiles
export HOME='/Users/gabehoban'
dotfiles=(
	"$HOME"/.zsh/profile.zsh
	"$HOME"/.zsh/alias.zsh
	"$HOME"/.zsh/antigen_plugins.zsh
	"$HOME"/.zsh/spaceship_config.zsh
)
for file in ${dotfiles[@]}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
unset dotfiles

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
# clear; lastlogin; ufetch-macos; todo

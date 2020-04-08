## Plugins
source ~/.zsh/antigen.zsh
antigen bundles <<EOB
	caarlos0/zsh-git-sync
	chrissicool/zsh-256color
	colored-man-pages
	command-not-found
	desyncr/auto-ls
	gem
	git
	iterm2
	lazyload
	MikeDacre/careful_rm
	qoomon/zsh-lazyload
	marzocchi/zsh-notify
	pip
	python
	rand-quote
	robbyrussell/oh-my-zsh plugins/encode64
	robbyrussell/oh-my-zsh plugins/fancy-ctrl-z
	rupa/z
	sindresorhus/pretty-time-zsh
	sudo
	unixorn/autoupdate-antigen.zshplugin
	zdharma/fast-syntax-highlighting
	zpm-zsh/colors
	zsh-brew-services
	zsh-users/zsh-autosuggestions
	zsh-users/zsh-history-substring-search
	zsh-users/zsh-syntax-highlighting

EOB
antigen apply

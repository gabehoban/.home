alias cp='cp -iv'
alias mkdir='mkdir -pv'
alias mv="mv -iv"
alias ls="ls -AGe"
alias cat="bat "
alias study='open -na "Brave Browser Nightly" --args --incognito "https://youtube.com/watch?v=MCkTebktHVc"'

alias dots='cd "$HOME"/.dotfiles &&\
    rm -f ~/.dotfiles/code/Codefile
    code-insiders --list-extensions | xargs -L 1 echo code-insiders --install-extension > ~/.dotfiles/code/Codefile &&\
        yes | cp -f ~/.vimrc ~/.dotfiles/vim/ &&\
        git add -A &&\
        git commit -m "commit all the things" &&\
        git push origin master &&\
        echo "$(cat -p ~/.bin/updots)"'

    alias pip="pip3"
    alias python='python3'
    alias gpgme="gpg -e -r hobang1@udayton.edu"
    alias nano="vim"
    alias op='lsof -i | grep -E "(LISTEN|ESTABLISHED)"'
    alias v="vim"
    alias status="git status --porcelain"

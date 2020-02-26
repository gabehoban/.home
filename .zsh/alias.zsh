alias cp='cp -iv'
alias mkdir='mkdir -pv'
alias mv="mv -iv"
alias rm="rmtrash"
alias ls="ls -AGe"
alias cat="bat "
alias study='open -na "Brave Browser Nightly" --args --incognito "https://youtube.com/watch?v=MCkTebktHVc"'

alias dots='cd "$HOME"/.dotfiles &&\
code-insiders --list-extensions > ~/.dotfiles/code/Codefile &&\
git add -A &&\
git commit -m "commit all the things" &&\
git push origin master &&\
echo "$(cat -p ~/.bin/updots)"'

alias pip="pip3"
alias python='python3'
alias gpgme="gpg -e -r hobang1@udayton.edu"
alias v="vim"

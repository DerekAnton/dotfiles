export DISPLAY=:0
export devhome="$HOME/git/"
umask 022

# RCs
alias reload="source ~/.bashrc"
alias bashrc="vim -p ~/.bash_aliases ~/.bash_functions && reload"
alias vimrc="vim ~/.vimrc"

# Navigation
alias dh="cd $devhome && pwd"
alias ll="ls -Flrt"
alias c="clear"
alias cll="c; ll"

# SSH
alias knownhosts="vim ~/.ssh/known_hosts"
alias ssh="ssh -qY -o ServerAliveInterval=5"

# Git
alias gits="git status --short"
alias cgits="c && gits"
alias ggrep="c && git grep -i"
alias gp="git pull"
alias difftool="git difftool"
alias cached="git difftool --cached"
alias gitk-sha="gitk --select-commit="
alias gs="git status"

# Repos
alias gh="cd ~/git/ && pwd"
alias dotfiles="cd ~/git/dotfiles && pwd"
alias tools="cd ~/tools"

# Build Related
alias mk='make --load-average=60 --directory=~/git/RTSTF/ -j5'
alias rmk='reset && mk'

# Misc
alias grep="grep -iI --color"
alias killjobs='kill $(jobs -p)'
alias who="w"
alias more="less"
alias bc="bc -l"

# Gnome
alias go="xdg-open"
alias term="gnome-terminal "
alias logout="gnome-session-quit --logout"
alias here="nautilus . &"

# Notes
alias notes="vim ~/.notes"
alias scratch="cd ~/tools/scratch && vim main.cpp"

# Vim Dev
alias vim="vim -p "
alias vim-help="vim -c Explore /usr/share/vim/vim74/doc"
alias vimdifftool="git difftool --tool=vimdiff"
alias cachedvimdiff="git difftool --cached --tool=vimdiff"
alias mktags="ctags -e -R ."

# Core Files
ulimit -c unlimited

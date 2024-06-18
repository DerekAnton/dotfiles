export DISPLAY=:0
export devhome=$HOME/git/
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

# Repos
alias gh="cd ~/git/ && pwd"
alias rxcert="cd ~/git/RxCert && pwd"
alias rx="rxcert"
alias ni="cd ~/git/NetworkInstall"
alias dotfiles="cd ~/git/dotfiles && pwd"
alias tools="cd ~/tools"
alias packupRTSTF="~/git/RTSTF/Scripts/Environments/packupRTSTF.bash -t /ap.org/storage/transfers/exports -u $(whoami)"

# Misc
alias grep="grep -iI --color"
alias killjobs='kill $(jobs -p)'
alias who="w"
alias more="less"

# Gnome
#alias go="gnome-open"
alias go="xdg-open"
alias logout="gnome-session-quit --logout"
alias here="nautilus . &"


alias scratch="cd ~/tools/scratch && vim main.cpp"

# Notes
alias notes="vim ~/.notes"

# Vim Dev
alias vim="vim -p"
function flist  { find ~/git/RTSTF -iname '*.cpp' -o -iname '*.cc' -o -iname '*.c' -o -iname '*.hpp' -o -iname '*.hh' -o -iname '*.h' ; }
function mlist  { find ~/git/RTSTF -iname 'makefile' ; }
function mktags { 'cd ~/git/ && flist > cscope.files && ctags -L cscope.files && cscope -bqv' ; }
alias vv='(mktags && cd ~/git/ &&  vim)'

# Vim Dev
#alias vim-help="vim -c Explore /usr/share/vim/vim74/doc"
#alias vim-explore="vim -c Explore "
#alias mklocaltags="flist > cscope.files && ctags -L cscope.files && cscope -bqv"
#alias vv='cd ~/git/RTSTF && mktags && flist > cscope.files && ctags -L cscope.files && cscope -bqv && vim'
#alias emacs="date ; echo 'Wait... you meant to type vim, didnt you? Of course you did. Let me help you with that.' ; sleep 3 ; import -window root ~/screen_$(date).png ; vim"

# Volume
alias vol="amixer set Master $1"
alias volume="pauvcontrol"

# Wifi
alias listwifi="nmcli -f ssid,signal device wifi list | tr -s \" \""
alias wifissidpass="nmcli device wifi connect $1 password $2"
alias wifissidnopass="nmcli device wifi connect $1"
alias wifiautonopass="~/.userscripts/NoPassWifiFetch.bash"
alias wifiautopass="~/.userscripts/WifiFetch.bash $1"

# Encrypt/Decrypt files
function encrypt { openssl enc -aes-256-cbc -salt -in $1 -out $(pwd)/encrypted ; }
function decrypt { openssl enc -aes-256-cbc -d -in $1 -out $(pwd)/decrypted ; }

# Backlight
# clone, make, and make install from the following repository
# https://github.com/haikarainen/light.git
# light -A 10 // increase backlight by 10
# light -U 10 // decrease backlight by 10
alias lightup="light -A $1"
alias lightdown="light -U $1"

# Core Files
#ulimit -c unlimited

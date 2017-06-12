export devhome=$HOME/git/RTSTF
alias dh="cd $devhome && pwd"

# Bashrc
alias reload="source ~/.bashrc"
alias bashrc="vi ~/.bash_aliases && reload"

# Build Related
alias whosbuilding="ssh skynet \"ps -ef |grep make | grep -v grep\" | awk '{print \$1}' | sort -u"
alias mk="makefast"
alias pmake="cd $devhome; git pull; mk; pwd;"

# Git
alias gits="git status --short"

# Navigation
alias lrt="ls -lrt"
alias lart="ls -lart"
alias c="clear"

# Programs
alias eclipse="eclipse &"
alias grep="grep --color"
export WINDOWS_PC_IP=166.17.200.145
alias windows='rdesktop -u e349914 -d us -T WindowsPC -g 1680x975 ${WINDOWS_PC_IP} > /dev/null 2>&1'
alias go="gnome-open"
alias psg="ps -ef | grep"
alias term="gnome-terminal &"
alias firefox="firefox &"

# RTSTF_master Branch
export rsm=$HOME/RTSTF_master
alias rsm="cd $rsm"
alias rsmb="cd $rsm/bin"

# Running Projects
alias receiverf="cd ~/git/RTSTF/Scenarios/SCS/ && ./ReceiveRF.bash"
alias scsdisplay="cd ~/RTSTF_master/bin/ && ./SCSDisplay"

# Scratch
alias scratch="~/.userscripts/CreateUniqueScratchFile.sh"

# SSH
alias ssh="ssh -Y"
alias sshnk="ssh -Y -o PreferredAuthentications=password"
alias sshEU011="ssh -Y root@192.168.3.137"

# Vim
alias vim="vim -p"
alias vimrc="vi ~/.vimrc"

# Vim Dev
function flist  { find ~/git/RTSTF -iname '*.cpp' -o -iname '*.cc' -o -iname '*.c' -o -iname '*.hpp' -o -iname '*.hh' -o -iname '*.h' ; }
function mlist  { find ~/git/RTSTF -iname 'makefile' ; }
function mktags { ssh -oLogLevel=error skynet 'cd ~/git/RTSTF && flist > cscope.files && ctags -L cscope.files && cscope -bqv' ; }
alias vv='(mktags && cd ~/git/RTSTF &&  vim)'

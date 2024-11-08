# .bashrc

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }

export PS1="[\u@\h \[\033[36m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\]]$ "


# Source Global Definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash Aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Bash Functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

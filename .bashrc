# .bashrc

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

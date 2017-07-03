#!/bin/bash

# Hard coded copies, use to check against PushFromRepo

# Dotfiles
cp ~/.bash_aliases ~/git/Bash_Scripts/dotfiles/bash_aliases &&
echo "wrote ~/.bash_aliases to ~/git/Bash_Scripts/dotfiles/bash_aliases"
cp ~/.bashrc ~/git/Bash_Scripts/dotfiles/bashrc &&
echo "wrote ~/.bashrc to ~/git/Bash_Scripts/dotfiles/bashrc"
#cp ~/.gitconfig ~/git/Bash_Scripts/dotfiles/gitconfig
cp ~/scratch/.template ~/git/Bash_Scripts/dotfiles/template &&
echo "wrote ~/scratch/.template to ~/git/Bash_Scripts/dotfiles/template"
cp ~/.vimrc ~/git/Bash_Scripts/dotfiles/vimrc &&
echo "wrote ~/.vimrc to ~/git/Bash_Scripts/dotfiles/vimrc"

# I3 config
cp ~/.config/i3/config ~/git/Bash_Scripts/dotfiles/config/i3/config &&
echo "wrote ~/.config/i3/config to ~/git/Bash_Scripts/dotfiles/config/i3/config"
cp /etc/i3status.conf ~/git/Bash_Scripts/etc/i3status.conf &&
echo "wrote /etc/i3status.conf to ~/git/Bash_Scripts/etc/i3status.conf"


# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/Bash_Scripts/userscripts/CreateUniqueScratchCpp.bash &&
echo "wrote ~/.userscripts/CreateUniqueScratchCpp.bash to ~/git/Bash_Scripts/userscripts/CreateUniqueScratchCpp.bash"
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/Bash_Scripts/userscripts/NoPassWifiFetch.bash &&
echo "wrote ~/.userscripts/NoPassWifiFetch.bash to ~/git/Bash_Scripts/userscripts/NoPassWifiFetch.bash"
cp ~/.userscripts/WifiFetch.bash ~/git/Bash_Scripts/userscripts/WifiFetch.bash
echo "wrote ~/.userscripts/WifiFetch.bash to ~/git/Bash_Scripts/userscripts/WifiFetch.bash"

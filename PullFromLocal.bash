#!/bin/bash

# Dotfiles
cp ~/.bash_aliases ~/git/dotfiles/dotfiles/bash_aliases
echo "wrote ~/.bash_aliases to ~/git/dotfiles/dotfiles/bash_aliases"
cp ~/.bashrc ~/git/dotfiles/dotfiles/bashrc
echo "wrote ~/.bashrc to ~/git/dotfiles/dotfiles/bashrc"
#cp ~/.gitconfig ~/git/dotfiles/dotfiles/gitconfig
cp ~/scratch/.template ~/git/dotfiles/dotfiles/template
echo "wrote ~/scratch/.template to ~/git/dotfiles/dotfiles/template"
cp ~/.vimrc ~/git/dotfiles/dotfiles/vimrc
echo "wrote ~/.vimrc to ~/git/dotfiles/dotfiles/vimrc"

# I3 config
cp ~/.config/i3/config ~/git/dotfiles/dotfiles/config/i3/config
echo "wrote ~/.config/i3/config to ~/git/dotfiles/dotfiles/config/i3/config"
cp /etc/i3status.conf ~/git/dotfiles/etc/i3status.conf
echo "wrote /etc/i3status.conf to ~/git/dotfiles/etc/i3status.conf"

# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash
echo "wrote ~/.userscripts/CreateUniqueScratchCpp.bash to ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash"
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/dotfiles/userscripts/NoPassWifiFetch.bash
echo "wrote ~/.userscripts/NoPassWifiFetch.bash to ~/git/dotfiles/userscripts/NoPassWifiFetch.bash"
cp ~/.userscripts/WifiFetch.bash ~/git/dotfiles/userscripts/WifiFetch.bash
echo "wrote ~/.userscripts/WifiFetch.bash to ~/git/dotfiles/userscripts/WifiFetch.bash"

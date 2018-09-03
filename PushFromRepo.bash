#!/bin/bash

# Dotfiles
cp ~/git/dotfiles/dotfiles/bash_aliases ~/.bash_aliases
cp ~/git/dotfiles/dotfiles/bashrc ~/.bashrc
cp ~/git/dotfiles/dotfiles/template ~/scratch/.template
cp ~/git/dotfiles/dotfiles/vimrc ~/.vimrc

# I3 config
cp ~/git/dotfiles/dotfiles/config/i3/config ~/.config/i3/config
cp ~/git/dotfiles/etc/i3status.conf /etc/i3status.conf

# Userscripts
cp ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash ~/.userscripts/CreateUniqueScratchCpp.bash
cp ~/git/dotfiles/userscripts/NoPassWifiFetch.bash ~/.userscripts/NoPassWifiFetch.bash
cp ~/git/dotfiles/userscripts/WifiFetch.bash ~/.userscripts/WifiFetch.bash

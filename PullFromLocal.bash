#!/bin/bash

# Dotfiles
cp ~/.bash_aliases .
cp ~/.bashrc .
cp ~/.vimrc .
cp ~/.notes .
cp ~/.gitconfig .
cp ~/scratch/.template .

# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/dotfiles/userscripts/NoPassWifiFetch.bash
cp ~/.userscripts/WifiFetch.bash ~/git/dotfiles/userscripts/WifiFetch.bash

# Configs
mkdir -p .config/gitk-3.0
cp ~/.config/gtk-3.0/gtk.css .config/gitk-3.0/

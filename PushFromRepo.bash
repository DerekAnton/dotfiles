#!/bin/bash

# Dotfiles
cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .notes ~/.notes
cp .gitconfig ~/.gitconfig
mkdir -p ~/scratch/
cp .template ~/scratch/.template

# Userscripts
mkdir -p ~/.userscripts/
cp ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash ~/.userscripts/CreateUniqueScratchCpp.bash
cp ~/git/dotfiles/userscripts/NoPassWifiFetch.bash ~/.userscripts/NoPassWifiFetch.bash
cp ~/git/dotfiles/userscripts/WifiFetch.bash ~/.userscripts/WifiFetch.bash

# Configs
cp .config/gitk-3.0/* ~/.config/gtk-3.0/gtk.css

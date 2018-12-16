#!/bin/bash

# Dotfiles
cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
cp -p .template ~/scratch/.template
cp .vimrc ~/.vimrc
cp .notes ~/.notes
cp .gitconfig ~/.gitconfig

# Userscripts
cp -p ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash ~/.userscripts/CreateUniqueScratchCpp.bash
cp -p ~/git/dotfiles/userscripts/NoPassWifiFetch.bash ~/.userscripts/NoPassWifiFetch.bash
cp -p ~/git/dotfiles/userscripts/WifiFetch.bash ~/.userscripts/WifiFetch.bash

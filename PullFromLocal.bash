#!/bin/bash

# Dotfiles
cp ~/.bash_aliases .
cp ~/.bashrc .
cp ~/scratch/.template .
cp ~/.vimrc .
cp ~/.notes .
cp ~/.gitconfig .

# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/dotfiles/userscripts/NoPassWifiFetch.bash
cp ~/.userscripts/WifiFetch.bash ~/git/dotfiles/userscripts/WifiFetch.bash

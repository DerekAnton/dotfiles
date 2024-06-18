#!/bin/bash

REPO=~/git/dotfiles/

cp ~/.bashrc $REPO ; \
cp ~/.bash_aliases $REPO ; \
cp ~/.bash_functions $REPO ; \
cp ~/.vimrc $REPO ; \
cp ~/.gitconfig $REPO ; \
cp ~/.notes $REPO ; \
cp ~/.tmux.conf $REPO ; \
cp -r ~/.config/user-dirs.dirs $REPO/.config/
cp -r ~/.vim/colors/* .vim/colors/

# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/dotfiles/userscripts/CreateUniqueScratchCpp.bash
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/dotfiles/userscripts/NoPassWifiFetch.bash
cp ~/.userscripts/WifiFetch.bash ~/git/dotfiles/userscripts/WifiFetch.bash

# Configs
mkdir -p .config/gitk-3.0
cp ~/.config/gtk-3.0/gtk.css .config/gitk-3.0/

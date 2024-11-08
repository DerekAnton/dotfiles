#!/bin/bash

REPO=~/git/dotfiles/

cp ~/.bashrc $REPO && \
cp ~/.bash_profile $REPO && \
cp ~/.bash_aliases $REPO && \
cp ~/.bash_functions $REPO && \
cp ~/.vimrc $REPO && \
cp ~/.gitconfig $REPO && \
cp ~/.notes $REPO && \
cp ~/.gtkrc-2.0 $REPO && \
cp ~/.vim/colors/* $REPO/.vim/colors/ && \
cp -r ~/.config/user-dirs.dirs $REPO/.config/

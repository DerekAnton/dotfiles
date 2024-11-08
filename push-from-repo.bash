#!/bin/bash

cp -f .bashrc ~/ && \
cp -f .bash_profile ~/ && \
cp -f .bash_aliases ~/ && \
cp -f .bash_functions ~/ && \
cp -f .vimrc ~/ && \
cp -f .gitconfig ~/ && \
cp -f .notes ~/ && \
cp -f .vim/colors/* ~/.vim/colors/ && \
cp -f .gtkrc-2.0 ~/

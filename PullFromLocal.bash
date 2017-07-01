#!/bin/bash

# Hard coded copies, use to check against PushFromRepo

# Dotfiles
cp ~/.bash_aliases ~/git/Bash_Scripts/dotfiles/bash_aliases &&
cp ~/.bashrc ~/git/Bash_Scripts/dotfiles/bashrc &&
#cp ~/.gitconfig ~/git/Bash_Scripts/dotfiles/gitconfig
cp ~/scratch/.template ~/git/Bash_Scripts/dotfiles/template &&
cp ~/.vimrc ~/git/Bash_Scripts/dotfiles/vimrc &&

# I3 config
cp ~/.config/i3/config ~/git/Bash_Scripts/dotfiles/config/i3/config &&

# Userscripts
cp ~/.userscripts/CreateUniqueScratchCpp.bash ~/git/Bash_Scripts/userscripts/CreateUniqueScratchCpp.bash &&
cp ~/.userscripts/NoPassWifiFetch.bash ~/git/Bash_Scripts/userscripts/NoPassWifiFetch.bash &&
cp ~/.userscripts/WifiFetch.bash ~/git/Bash_Scripts/userscripts/WifiFetch.bash

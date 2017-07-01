#!/bin/bash

filename="null"

# Dotfiles
for file in ~/git/Bash_Scripts/dotfiles/*; do

    # file returns the full path to that file
    # the following command removes all characters up until the last "/" from file and prepends a "."
    filename=".${file##*/}"

    if [ $filename == ".bash_aliases" ]
    then
        echo "writting " $filename " to ~/"
        cp $file ~/$filename
    elif [ $filename == ".bashrc" ]
    then
        echo "writting " $filename " to ~/"
        cp $file ~/$filename
    elif [ $filename == ".gitconfig" ]
    then
        echo "skipping " $filename " to ~/"
        #cp $file ~/$filename
    elif [ $filename == ".template" ]
    then
        echo "writting " $filename " to ~/scratch/"
        cp $file ~/scratch/$filename
    elif [ $filename == ".vimrc" ]
    then
        echo "writting " $filename " to ~/"
        cp $file ~/$filename
    else
        echo "Unknown file name: " $filename
    fi
done

echo "Writting i3 config to ~/.config/i3/config"
cp ~/git/Bash_Scripts/dotfiles/config/i3/config ~/.config/i3/config


# Userscripts
for file in ~/git/Bash_Scripts/userscripts/*; do

    filename="${file##*/}"

    if [ $filename == "CreateUniqueScratchCpp.bash" ]
    then
        echo "writting " $filename " to ~/.userscripts"
        cp $file ~/.userscripts/$filename

    elif [ $filename == "NoPassWifiFetch.bash"  ]
    then
        echo "writting " $filename " to ~/.userscripts"
        cp $file ~/.userscripts/$filename

    elif [ $filename == "WifiFetch.bash"  ]
    then
        echo "writting " $filename " to ~/.userscripts/"
        cp $file ~/.userscripts/$filename

    else
        echo "Unknown file name: " $filename
    fi
done

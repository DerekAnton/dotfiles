#!/bin/bash

name=scratch

if [[ -e $name.cpp ]] ; then
    i=$((1 + RANDOM % 999))
    while [[ -e $name-$i.cpp ]] ; do
        let i++
    done
    name=$name-$i
fi
cp ~/scratch/.template "$name".cpp
vim ~/scratch/"$name".cpp

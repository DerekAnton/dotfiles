#!/bin/bash

dirs=($(find ~/git/Bash_Scripts -type d))

for dir in "${dirs[@]}"; do
    cd "$dir"
    echo $PWD
done


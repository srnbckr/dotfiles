#!/bin/bash

DOTFOLDERS="tmux fish nvim bin"

for folder in $DOTFOLDERS; do 
    echo $folder
    stow  --target=$HOME --restow $folder
done

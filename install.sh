#!/bin/bash

#
#
#
#
DOTFOLDERS="tmux fish nvim"

for folder in $DOTFOLDERS; dof 
    echo $folder
    stow  --target=$HOME --restow $folder
done
#stow --verbose --target=$HOME --restow $DOTFOLDERS

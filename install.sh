#!/bin/bash

DOTFOLDERS="tmux fish nvim bin"

# Install Fisher if not present
if ! command -v fisher &> /dev/null; then
    echo "Installing Fisher..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish > /tmp/fisher.fish
    fish -c "source /tmp/fisher.fish"
    rm /tmp/fisher.fish
    
    # Install plugins from fishfile
    if [ -f ~/.config/fish/fishfile ]; then
        echo "Installing Fisher plugins..."
        fish -c "fisher install < ~/.config/fish/fishfile"
    fi
fi

for folder in $DOTFOLDERS; do 
    echo $folder
    stow  --target=$HOME --restow $folder
done

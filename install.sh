#!/bin/bash

# check if virtualenv already exists
if [[ ! -d .venv ]]; then
    echo "Create virtualenv and install ansible"
    virtualenv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    ansible-galaxy install -r requirements.yml
    echo "Run ansible-playbook bootstrap.yml to install dependencies"
fi

DOTFOLDERS="tmux fish nvim"

for folder in $DOTFOLDERS; do 
    echo $folder
    stow  --target=$HOME --restow $folder
done

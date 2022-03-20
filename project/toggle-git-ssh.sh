#!/bin/bash

MODE=$1 # options: 'ssh' or 'user'
# npm using https for git
if [[ "$MODE" == "user" ]]; then
    git config --global url."https://github.com/".insteadOf git@github.com:
    git config --global url."https://".insteadOf git://
    echo "using personal access token"
elif [[ "$MODE" == "ssh" ]]; then
# npm using git for https
    git config --global --unset url."https://github.com/".insteadOf 
    git config --global --unset url."https://".insteadOf
    echo "using ssh"
else
    echo "Not a valid mode"
fi
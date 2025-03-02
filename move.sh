#!/bin/bash

if [ -f "$HOME/.tmux.conf" ]; then
    echo "$HOME/.tmux.conf exists!";
else
    cp ./tmux ~/.tmux.conf
fi

if [ -f "$HOME/.vimrc" ]; then
    echo "$HOME/.vimrc exists!";
else
    cp ./vim_rc ~/.vimrc
fi

if [ -f "$HOME/.bashrc" ]; then
    cat ./bash_rc >> $HOME/.bashrc
else
    echo "$HOME/.bashrc not exist!";
fi


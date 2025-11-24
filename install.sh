#!/bin/bash

exec > ~/.dotfiles.log 2>&1  
set -x

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local

cat ~/dotfiles/.bashrc >> ~/.bashrc

echo Custom setup done! Git commands are now available.

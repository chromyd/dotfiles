#!/bin/bash

exec > ~/.dotfiles.log 2>&1  
set -x

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local

cat ~/dotfiles/.bashrc >> ~/.bashrc
cat ~/dotfiles/.zshrc >> ~/.zshrc

ln -s ~/dotfiles/{.zsh_aliases,.zsh_functions} ~

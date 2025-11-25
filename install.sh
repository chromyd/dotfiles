#!/bin/bash

exec > ~/.dotfiles.log 2>&1  
set -x

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local

cat ~/dotfiles/.bashrc >> ~/.bashrc
cat ~/dotfiles/.zshrc >> ~/.zshrc

ln -s ~/dotfiles/{.zsh_aliases,.zsh_functions} ~

# Uncomment the next line to change ZSH_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
sed -i 's/^ZSH_THEME="[^"]*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
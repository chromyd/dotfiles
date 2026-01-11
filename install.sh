#!/bin/bash

exec > ~/.dotfiles.log 2>&1  
set -x

P10K=true

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local
ln -s ~/dotfiles/{.p10k.zsh,.zsh_aliases,.zsh_functions,.amazonq} ~
ln -s ~/dotfiles/_gitignore ~/.gitignore

cat ~/dotfiles/.bashrc >> ~/.bashrc

if [ "${P10K}" = "true" ]
then
    cat ~/dotfiles/.zshrc-p10k >> ~/.zshrc
    sed -i 's/^ZSH_THEME="[^"]*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
else
    cat ~/dotfiles/.zshrc >> ~/.zshrc
    # Uncomment the next line to change ZSH_THEME
    # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
    # sed -i 's/^ZSH_THEME="[^"]*"/ZSH_THEME="af-magic"/' ~/.zshrc
fi

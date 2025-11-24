#!/bin/bash

echo install.sh is running >> ~/.dotfiles.log

exec 3> ~/.dotfiles.log
BASH_XTRACEFD=3
set -x

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local

#echo "export PATH=$PATH:$HOME/dotfiles/bin
cat ~/dotfiles/.bashrc >> ~/.bashrc

echo Custom setup done! Git commands are now available.

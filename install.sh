#!/bin/bash

exec 3> debug.log
BASH_XTRACEFD=3
set -x

echo install.sh is running >> ~/.dotfiles.log

mkdir ~/.local
ln -s $HOME/dotfiles/bin ~/.local

#echo "export PATH=$PATH:$HOME/dotfiles/bin
echo "set -o vi" >> ~/.bashrc

echo Custom setup done! Git commands are now available.

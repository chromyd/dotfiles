#!/bin/bash

exec > ~/.dotfiles.log 2>&1  
set -ex

P10K=true

mkdir -p ~/.local/bin
# symlink each script individually so we coexist with kiro-cli et al.
for f in "$HOME"/dotfiles/bin/*; do
    ln -sf "$f" ~/.local/bin/
done

ln -sf ~/dotfiles/{.p10k.zsh,.zsh_aliases,.zsh_functions} ~
ln -sf ~/dotfiles/_gitignore ~/.gitignore
ln -sf ~/dotfiles/.amazonq /aip-aws-services
mkdir -p ~/.kiro/agents
ln -sf ~/dotfiles/.kiro/agents/caveman.json ~/.kiro/agents

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

if [ ! -z "${customValue3}" ]
then
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
    cp ~/dotfiles/id_rsa.pub ~/.ssh
    set +x
    echo "${customValue3}" > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
fi
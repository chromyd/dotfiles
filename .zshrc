# 
# Personal settings
#
ZSH_THEME=cypher

[ -f ~/.zsh_functions ] && source ~/.zsh_functions
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

set -o vi

# For pager in Git
export LESS="--no-init --quit-if-one-screen -R"

export ZSH=~/.oh-my-zsh
export PATH="/usr/local/opt/ansible@1.9/bin:$PATH"
export EDITOR='vim'

ZSH_THEME="pygmalion"

fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh
source ~/.bin/tmuxinator.zsh
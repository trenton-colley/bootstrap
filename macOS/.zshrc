export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin/usr/local/opt/ansible@1.9/bin:$HOME/bin:/usr/local/bin:$PATH"
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GPG_TTY=$(tty)

ZSH_THEME="pygmalion"

fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh
source ~/.bin/tmuxinator.zsh
source $(dirname $(gem which colorls))/tab_complete.sh
source $HOME/.project_shortcuts

ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

##################################################
# Preferred editor for local and remote sessions #
##################################################

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls="colorls -la"

###############
# GIT ALIASES #
###############
alias stash="git stash"
alias co="git checkout"
alias pull="git pull"
alias fetch="git fetch"
alias reset="git reset --hard"
alias rm-merged="git checkout master &&  git branch --merged | grep -v \* | xargs git branch -D"
alias rm-all="git checkout master &&  git branch --list | grep -v \* | xargs git branch -D"

SPACESHIP_PROMPT_ADD_NEWLINE="true"
#SPACESHIP_CHAR_SYMBOL="\uf0e7"
#SPACESHIP_CHAR_PREFIX="---"
SPACESHIP_CHAR_SUFFIX=("")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

autoload -U promptinit; promptinit
prompt spaceship

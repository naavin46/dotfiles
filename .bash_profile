if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(rbenv init -)"

source ~/.git-prompt.sh

PROMPT_COMMAND='__posh_git_ps1 "\u@\h :\w" "\\\$ ";'$PROMPT_COMMAND

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export PATH="$HOME/.node/bin:$PATH"

alias gc='git checkout'

alias gs='git status'

alias gd='git diff'

alias gp='git pull'

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

#export PATH="$HOME/.node/bin:$PATH"

alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias sourcetree='open -a SourceTree'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH="$PATH:$HOME/anaconda/bin"
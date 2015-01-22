# bash
[[ -f $HOME/.bash/aliases ]] && source $HOME/.bash/aliases
[[ -f $HOME/.bash/functions ]] && source $HOME/.bash/functions
[[ -f $HOME/.bash/variables ]] && source $HOME/.bash/variables

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

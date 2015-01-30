export EDITOR="vim"
export PROMPT_COMMAND="__set_prompt"

# bash
[[ -f $HOME/.bash/functions ]] && source $HOME/.bash/functions
[[ -f $HOME/.bash/aliases ]] && source $HOME/.bash/aliases

if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
  source $(brew --prefix)/etc/bash_completion
fi

[[ -n `declare -f -F __git_complete` ]] && __git_complete g _git

# postgres
if [[ -d /Applications/Postgres.app/Contents/Versions/9.4/bin ]]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
fi

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR="vim"
export PROMPT_COMMAND="__set_prompt"

# bash
[[ -f $HOME/.bash/functions ]] && source $HOME/.bash/functions
[[ -f $HOME/.bash/aliases ]] && source $HOME/.bash/aliases

if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
  source $(brew --prefix)/etc/bash_completion
fi

# git
export GIT_PS1_SHOWDIRTYSTATE=1

if [[ -f $(brew --prefix)/share/git-core/contrib/completion/git-prompt ]]; then
  source $(brew --prefix)/share/git-core/contrib/completion/git-prompt
fi

[[ -n `declare -f -F __git_complete` ]] && __git_complete g _git

# postgres
if [[ -d /Applications/Postgres.app/Contents/Versions/9.4/bin ]]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
fi

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# heroku
if [[ -d /usr/local/heroku/bin ]]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi

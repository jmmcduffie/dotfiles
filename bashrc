export EDITOR="vim"
export PROMPT_COMMAND="__set_prompt"

# bash
[[ -f $HOME/.bash/functions ]] && source $HOME/.bash/functions
[[ -f $HOME/.bash/aliases ]] && source $HOME/.bash/aliases
[[ -f $HOME/.bashrc.local ]] && source $HOME/.bashrc.local

if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
  source $(brew --prefix)/etc/bash_completion
fi

# git
export GIT_PS1_SHOWDIRTYSTATE=1

if [[ -f $(brew --prefix)/share/git-core/contrib/completion/git-prompt ]]; then
  source $(brew --prefix)/share/git-core/contrib/completion/git-prompt
fi

[[ -n `declare -f -F __git_complete` ]] && __git_complete g _git

if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

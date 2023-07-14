# sourced when launching an interactive non login shell

# start starship for interactive shells
eval "$(starship init zsh)"

# start pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# alias
alias ll="ls -lah"
alias df="df -h"
alias du="du -h"
alias chrome='open -a "Google Chrome.app"'
alias history="history 0"
alias k="kubectl"
# sensible history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

if [ "$TMUX" = "" ]; then tmux; fi
autoload -Uz compinit && compinit

flush-dns(){
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

source /Users/logancox/.docker/init-zsh.sh || true # Added by Docker Desktop

# For node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# For Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

[[ $commands[kubectl] ]] && source <(kubectl completion zsh) # add autocomplete permanently to your zsh shell


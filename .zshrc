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

export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

if [ "$TMUX" = "" ]; then tmux; fi
autoload -Uz compinit && compinit

flush-dns(){
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

source /Users/logancox/.docker/init-zsh.sh || true # Added by Docker Desktop

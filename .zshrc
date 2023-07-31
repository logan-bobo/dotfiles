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
alias ls="exa"
alias bat="bat"

# sensible history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

# make
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

if [ "$TMUX" = "" ]; then tmux; fi
autoload -Uz compinit && compinit

flush-dns(){
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

# go 
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# kube
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# sourced at login

# set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# add ssh key to ssh agent
eval "$(ssh-agent -s)" > /dev/null
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 > /dev/null

# add gpgkey to gpg agent
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

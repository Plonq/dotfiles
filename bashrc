#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom prompt
export PS1="\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;172m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\w\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;41m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/devel
source /usr/bin/virtualenvwrapper.sh

# Aliases
alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias update='trizen -Syu'

# Set vim keybindings
set -o vi

# User scripts/executables
export PATH=~/bin:$PATH

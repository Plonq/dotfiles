#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;172m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\w\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;41m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Set up virtualenvwrapper
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/devel
source /usr/bin/virtualenvwrapper.sh
alias vi='vim'
alias ll='ls -al'

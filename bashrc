#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[$(tput bold)\]\[\033[38;5;35m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\] \[\033[38;5;29m\]\w\[$(tput sgr0)\] \[\033[38;5;35m\]  \[$(tput sgr0)\]'

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias cp="cp -i"
alias grep='grep --color=auto'

PS1='\[$(tput bold)\]\[\033[1;36m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\] \[\033[0;34m\]\w\[$(tput sgr0)\] \[\033[0;35m\]  \[$(tput sgr0)\]'

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

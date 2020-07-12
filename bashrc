#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --group-directories-first --color=auto'
alias ll='ls -lh --group-directories-first --color=auto'
alias la='ls -lah --group-directories-first --color=auto'
alias cp="cp -i"
alias grep='grep --color=auto'
alias df='df -h'
alias diff='diff --color=auto'
alias free='free -m'
alias ip='ip -color=auto'

shopt -s autocd
umask 77

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

PS1='\[$(tput bold)\]\[\033[1;36m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\] \[\033[0;34m\]\w\[$(tput sgr0)\] \[\033[0;35m\]  \[$(tput sgr0)\]'

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

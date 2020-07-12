#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export TERMINAL="alacritty"
export BROWSER="firefox"
export EDITOR="vim"
export QT_STYLE_OVERRIDE=gtk2

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx
fi

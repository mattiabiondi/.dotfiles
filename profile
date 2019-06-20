[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export TERMINAL="st"
export BROWSER="google-chrome-stable"
export EDITOR="gedit"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

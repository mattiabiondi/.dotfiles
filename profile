[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export TERMINAL="alacritty"
export BROWSER="firefox"
export EDITOR="vim"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

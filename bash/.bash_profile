#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
#export BSPWM_SOCKET="/tmp/bspwm-socket"
#export PANEL_FIFO="/tmp/panel-fifo"
export PATH="$PATH:$HOME/dotfiles/bin"
#export PATH="$PATH:/home/carlosf/.config/bspwm"
#export PANEL_HEIGHT=18

export GOPATH=$HOME/.go
#export PATH=$PATH:$GOPATH/bin

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd
mpd

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
#	exec startxfce4
#fi

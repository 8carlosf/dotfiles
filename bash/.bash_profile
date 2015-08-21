#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME="/home/carlosf/.config"
#export BSPWM_SOCKET="/tmp/bspwm-socket"
#export PANEL_FIFO="/tmp/panel-fifo"
export PATH="$PATH:$HOME/dotfiles/bin"
#export PATH="$PATH:/home/carlosf/.config/bspwm"
#export PANEL_HEIGHT=18

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd
mpd

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
#	exec startxfce4
#fi

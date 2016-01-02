#
# ~/.bashrc
#

alias pacman='pacaur'
alias update='pacaur -Syu && sudo pkgcacheclean -v'
alias update-git='pacaur -Syua --devel --needed'
alias ls="ls --color=auto"
alias rm='rm -I'
alias ll='ls -la'
alias grep='grep --color=auto'
alias unrarall='for i in $(tree -if | grep .rar);do unrar x $i; done;'
alias unrarall2='find -name "*.rar" | parallel unrar x {}'
alias unzipall='ls | grep .zip | parallel atool -x {}'
alias moff='xset dpms force off'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gld='git log --decorate --stat --graph --pretty=format:"%d %Cgreen%h%Creset (%ar - %Cred%an%Creset), %s%n"'
alias active='grep -v -e "^$" -e"^ *#"'
alias share='python -m http.server'
alias flac2mp3='find -name "*.flac" | parallel ffmpeg -i {} -acodec libmp3lame -ab 320k {.}.mp3 "&&" rm {}'
alias matlab='/home/carlosf/Apps/Matlab/bin/matlab -nosplash -desktop'
alias matlab1='/home/carlosf/Apps/Matlab/bin/matlab -nodesktop'
alias please='sudo !!'
#alias lock="slock & xset dpms force off"
alias chess='GTK2_RC_FILES=/usr/share/themes/Numix-ArchBlue/gtk-2.0/gtkrc pychess'
alias mpvl='mpv --no-resume-playback'
alias uglify='uglifyjs --compress --mangle -- '
alias calc='python3 -ic "from math import *"'
alias ydl='youtube-dl -f best --restrict-filenames'
alias private_mode='unset HISTFILE'

dualscreen(){
	xrandr --output LVDS1 --primary
	xrandr --output VGA1 --mode 1920x1080 --left-of LVDS1
	#bspc monitor VGA1 -d \ 1\  \ 2\  \ 3\  \ 4\  \ 5\  \ 6\ 
	#bspc monitor LVDS1 -d \ 7\  \ 8\  \ 9\  \ 0\ 
	#bspc monitor VGA1 -s LVDS1
	feh --bg-fill $HOME/Images/numix.png
	#setxkbmap -layout us -variant intl
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

#PS1='[\u@\h \W]\$ '
if [ "${TERM%%-*}" = 'linux' ]; then
	PS1='\n\[\033[0;34m\][\[\033[0m\]\u\[\033[0;34m\]]\[\033[0m\] \W \[\033[0;34m\]\$\[\033[0m\] '
else
	#PS1='\n\e[104;30m\u\e[40;94m\e[40;93m \W\e[44;30m\e[44;97m \$\e[;34m\e[0m '
	#PS1='\n\[\e[40;93m\] \W \[\e[44;30m\]\[\e[44;97m\] \$ \[\e[;34m\]\[\e[m\] '
	#PS1='\n\[\e[40;97m\] \W \[\e[107;30m\]\[\e[;97m\]\[\e[m\] '
	PS1='\n\[\e[40;93m\] \W \[\e[44;30m\]\[\e[;34m\]\[\e[m\] '
fi

# .inputrc #set completion-ignore-case on
#set show-all-if-ambiguous on
export EDITOR='vim'
#export TERM='xterm
# ignorespace comandos comecados por espaco, e ignoredups comandos repetidos
#export HISTCONTROL=ignoreboth
export HISTCONTROL=ignoredups
HISTFILESIZE=1000000
HISTSIZE=1000000
# guardar logo, em vez de so no fim da sessao
PROMPT_COMMAND='history -a'
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
shopt -s checkwinsize
eval $(dircolors ~/.dircolors) #termite stuff
# z-git - jump around
. /usr/lib/z.sh

# set vimpager as default terminal pager
#export PAGER='vimpager'
#alias less=$PAGER


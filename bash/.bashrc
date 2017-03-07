#
# ~/.bashrc
#
# Depends On (optional!?): bash-completion

alias v='vim'
alias agh='ag --hidden'
alias pacman='pacaur'
alias update='pacaur -Syu --noedit && sudo pkgcacheclean -v'  #replace pkgcacheclean with paccache?!
alias update-git='pacaur -Syua --devel --needed --noconfirm --noedit'
alias ls="ls --color=auto"
alias rm='rm -I'
alias ll='ls -latr'
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
#alias matlab='$HOME/Apps/Matlab/bin/matlab -nosplash -desktop'
alias matlab1='$HOME/Apps/Matlab/bin/matlab -nodesktop -nosplash'
alias matlab2='$HOME/Apps/Matlab/bin/matlab -nodesktop -nosplash -nojvm'
alias please='sudo !!'
#alias lock="slock & xset dpms force off"
alias chess='GTK2_RC_FILES=/usr/share/themes/Numix-ArchBlue/gtk-2.0/gtkrc pychess'
alias mpvl='mpv --no-resume-playback'
alias uglify='uglifyjs --compress --mangle -- '
alias calc='python3 -ic "from math import *"'
alias ydl='youtube-dl -f best --restrict-filenames'
alias private_mode='unset HISTFILE'

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
#export TERM='xterm'

# Prevent file overwrite on stdout redirection
# Use `>|` to force redirection to an existing file
# set -o noclobber

# Update window size after every command
shopt -s checkwinsize

# Automatically trim long paths in the prompt (requires Bash 4.x)
PROMPT_DIRTRIM=2

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
# bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '

# Enable incremental history search with up/down arrows (also Readline goodness)
# Learn more about this here: http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

# This defines where cd looks for targets
# Add the directories you want to have fast access to, separated by colon
# Ex: CDPATH=".:~:~/projects" will look for targets in the current working directory, in home and in the ~/projects folder
CDPATH="."

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars
export dotfiles="$HOME/dotfiles"

eval $(dircolors ~/.dircolors) #termite stuff
# z-git - jump around
. /usr/lib/z.sh

# set vimpager as default terminal pager
#export PAGER='vimpager'
#alias less=$PAGER


#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset +fp /usr/share/fonts/local
xset fp rehash
#setxkbmap -layout pt
#setxkbmap -layout pt,us -variant ,altgr-intl -option grp:alt_caps_toggle
# setxkbmap -layout pt,gb -variant ,extd -option grp:alt_caps_toggle,caps:backspace
setxkbmap -layout gb,pt -variant extd, -option grp:alt_caps_toggle,caps:backspace
xsetroot -cursor_name left_ptr
#feh --bg-center ~/Images/wall_archlinux.png
# Disable DPMS turning off the screen
xset -dpms
#xset s off
xset s 3600
# Disable bell
xset b off
# Disable mouse acceleration
xset m 0 0
unclutter --timeout 2 -b #Airblader/unclutter-xfixes

feh --bg-fill ~/Images/MarS.png
# feh --bg-fill ~/Images/numix.png
# feh --bg-fill ~/Images/AnselAdams.jpg
#wmname LG3D

# Use XToolkit in java applications
export AWT_TOOLKIT=XToolkit

# Enable core dumps in case something goes wrong
ulimit -c unlimited

#exec startxfce4

#compton --backend xrender --vsync drm --unredir-if-possible --xrender-sync-fence -b
compton --backend glx --glx-no-stencil --vsync opengl-swc --paint-on-overlay --unredir-if-possible -b
#sxhkd &
#2> ~/.bspwm.log &

#wicd-client -t &
numlockx &
redshift-gtk -l 40.2:-8.4 &
nm-applet &
# QT_STYLE_OVERRIDE=gtk dropbox &
#caffeine &

#exec i3 --shmlog-size=26214400
exec i3
#exec dbus-launch bspwm -s "$PANEL_FIFO" -p W
#exec openbox-session


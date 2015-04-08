#!/bin/bash

fscrn=$(mktemp --tmpdir XXXX.png)
fblur=$(mktemp --tmpdir XXXX.png)

scrot $fscrn
#convert $fscrn -colorspace gray -blur 0x3 $fblur
xset dpms force off
convert $fscrn -blur 0x4 $fblur
rm $fscrn

i3lock -dui $fblur
rm $fblur


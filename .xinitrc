#!/usr/bin/sh

setxkbmap -option "caps:swapescape" &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
xrandr --output VGA-0 --auto --right-of HDMI-0 --auto --output LVDS --off &
xsetroot -solid '#2b333F' &
exec dbus-launch --exit-with-session i3

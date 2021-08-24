#!/usr/bin/sh

setxkbmap -option "caps:swapescape" &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --brightness .9 --output LVDS --off
# xrandr --output VGA-0 --auto --brightness .9 --output LVDS --off &
xsetroot -solid '#2b333F' &
# volumeicon &
exec dbus-launch --exit-with-session i3
# exec dbus-launch --exit-with-session gnome-session

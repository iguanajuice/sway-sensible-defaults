#!/bin/sh

sudo dnf install -y \
sway swaybg swaylock waybar mako fuzzel foot micro playerctl light polkit-gnome xdg-desktop-portal-wlr gnome-calculator gnome-calendar network-manager-applet copyq

cp -r config/* ~/.config

#!/bin/sh

sudo pacman --needed --noconfirm -S \
sway swaybg swaylock waybar mako fuzzel foot micro playerctl light polkit-gnome xdg-desktop-portal-wlr gnome-calculator gnome-calendar network-manager-applet copyq wl-clipboard slurp grim

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin

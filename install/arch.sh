#!/bin/sh

sudo pacman --needed --noconfirm -S \
sway swaybg swaylock waybar mako fuzzel foot micro playerctl light polkit-gnome xdg-desktop-portal-hyprland gnome-calculator gnome-calendar network-manager-applet copyq

cp -r config/* ~/.config

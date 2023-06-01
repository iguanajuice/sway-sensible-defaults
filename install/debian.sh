#!/bin/sh

sudo apt install \
sway swaybg swaylock waybar mako fuzzel foot micro playerctl light policykit-1-gnome xdg-desktop-portal-wlr gnome-calculator gnome-calendar network-manager-gnome copyq wl-clipboard slurp grim

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp -r share/* /usr/share

#!/bin/sh

sudo apt install \
sway swaybg swaylock waybar mako-notifier wofi foot micro playerctl light policykit-1-gnome xdg-desktop-portal-wlr gnome-calculator gnome-calendar gnome-system-monitor network-manager-gnome copyq wl-clipboard slurp grim

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp -r share/* /usr/share

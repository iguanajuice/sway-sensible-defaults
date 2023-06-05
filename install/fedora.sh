#!/bin/sh

sudo dnf install -y \
sway swaybg swaylock waybar mako fuzzel kitty micro playerctl light polkit-gnome xdg-desktop-portal-wlr \
gnome-calculator gnome-calendar gnome-system-monitor gnome-tweaks \
network-manager-applet pavucontrol copyq wl-clipboard slurp grim

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp -r share/* /usr/share

#!/bin/sh

sudo pacman --needed --noconfirm -S \
sway swaybg swaylock waybar mako fuzzel kitty micro playerctl light polkit-gnome xdg-desktop-portal-wlr \
gnome-calculator gnome-calendar gnome-system-monitor gnome-tweaks qgnomeplatform-qt5 qgnomeplatform-qt6 \
network-manager-applet pavucontrol copyq wl-clipboard slurp grim gsfonts ttf-font-awesome

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp -r share/* /usr/share
echo QT_QPA_PLATFORMTHEME=gnome /bin/sway -D noscanout "$@" | sudo tee /usr/local/bin/sway
sudo chmod +x /usr/local/bin/sway

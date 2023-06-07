#!/bin/sh

sudo pacman --needed --noconfirm -S \
sway swaybg swaylock waybar mako fuzzel kitty micro playerctl light polkit-gnome xdg-desktop-portal-wlr \
gnome-calculator gnome-calendar gnome-system-monitor gnome-tweaks gnome-themes-extra qgnomeplatform-qt5 qgnomeplatform-qt6 \
dex network-manager-applet pavucontrol copyq wl-clipboard slurp grim gsfonts otf-font-awesome

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp share/icons/nwg-bar /usr/share/icons
echo 'QT_QPA_PLATFORMTHEME=gnome /bin/sway -D noscanout "$@"' | sudo tee /usr/local/bin/sway
sudo chmod +x /usr/local/bin/sway

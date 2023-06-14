#!/bin/sh

sudo pacman --needed --noconfirm -S \
sway swaybg swaylock waybar mako fuzzel kitty micro playerctl light polkit-gnome xdg-desktop-portal-wlr xorg-xwayland \
gnome-calculator gnome-calendar gnome-weather gnome-system-monitor gnome-tweaks gnome-themes-extra
qgnomeplatform-qt5 qgnomeplatform-qt6 dex nm-connection-editor pavucontrol copyq wl-clipboard slurp grim gsfonts otf-font-awesome

cp -r config/* ~/.config
chmod -R +x ~/.config/sway/bin
sudo cp -r share/icons/nwg-bar /usr/share/icons
echo 'XDG_CURRENT_DESKTOP=sway QT_QPA_PLATFORMTHEME=gnome /bin/sway -D noscanout "$@"' | sudo tee /usr/local/bin/sway
sudo chmod +x /usr/local/bin/sway

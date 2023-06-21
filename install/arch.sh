#!/bin/sh

sudo sh -c "
  pacman --needed --noconfirm -S \
  sway swaybg swaylock waybar mako fuzzel kitty micro playerctl light polkit-gnome xdg-desktop-portal-wlr xdg-user-dirs xorg-xwayland \
  gnome-calculator gnome-calendar gnome-weather gnome-system-monitor gnome-tweaks gnome-themes-extra dconf-editor \
  qgnomeplatform-qt5 qgnomeplatform-qt6 dex nm-connection-editor pavucontrol copyq wl-clipboard slurp grim gsfonts ttf-font-awesome
  
  cp -r config/* ~/.config
  chmod -R +x ~/.config/sway/bin
  cp -r share/icons/nwg-bar /usr/share/icons
  echo 'XDG_CURRENT_DESKTOP=sway QT_QPA_PLATFORMTHEME=gtk3 /bin/sway -D noscanout "$@"' | sudo tee /usr/local/bin/sway
  chmod +x /usr/local/bin/sway
  
  mv /usr/share/applications/kitty-open.desktop /usr/share/applications/kitty-open.desktop.bak
"

gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty
gsettings set org.gnome.desktop.interface clock-format 12h

xdg-user-dirs-update

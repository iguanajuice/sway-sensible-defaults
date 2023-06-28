# sway-sensible-dotfiles

A better default config for sway. Minimally riced and includes most basic to intermediate functionality such as:

- Volume and media control
- Brightness control [(light)](http://haikarainen.github.io/light/)
- Clipboard manager [(copyq)](https://github.com/hluk/CopyQ)
- Notification daemon [(mako)](https://github.com/emersion/mako)
- Polkit authentication agent
- Setting primay monitor for Xwayland apps
- Font configuration
- Touchpad gestures
- Commonly used shortcuts you'd find in most DEs, like Super+E for file manager and Alt+F4 to close window
- Alt-Tab like behavior thanks to [i3-focus-last](https://github.com/lbonn/i3-focus-last) and [sway-overfocus](https://github.com/korreman/sway-overfocus)
- Suspend on laptop lid close
- Put monitors to sleep when locked to save power
- Basic [waybar](https://github.com/Alexays/Waybar) config with persistent workspaces and app launchers for common programs
- Graphical shutdown/restart/logout prompt [(nwg-bar)](https://github.com/nwg-piotr/nwg-bar)
- Plus a few other tweaks and fixes

To install, run:
- `sh install/arch.sh` if you are using Arch/Manjaro/Garuda/EndeavourOS

**WARNING:** This will overwrite any existing config for sway, waybar, and kitty.
Make sure to back them up if you still need them.

Once in sway, please press Ctrl+Super+C and read through the config.

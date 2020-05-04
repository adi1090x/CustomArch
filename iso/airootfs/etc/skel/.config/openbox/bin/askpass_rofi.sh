#!/usr/bin/env bash
rofi -dmenu\
    -password\
    -i\
    -no-fixed-num-lines\
    -p "Sudo Password: "\
    -theme ~/.config/openbox/bin/askpass.rasi

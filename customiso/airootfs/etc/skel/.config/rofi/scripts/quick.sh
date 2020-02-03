#!/bin/bash

rofi_command="rofi -theme themes/quick.rasi"

### Options ###
screen=""
area=""
window=""
screen1=""
area1=""
window1=""
screen2=""
area2=""
window2=""
# Variable passed to rofi
options="$screen\n$area\n$window\n$screen1\n$area1\n$window1\n$screen2\n$area2\n$window2"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 0)"
case $chosen in
    $screen)
        sleep 1; scrot
        ;;
    $area)
        scrot -s
        ;;
    $window)
        sleep 1; scrot -u
        ;;
esac


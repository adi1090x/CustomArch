#!/usr/bin/env bash

## rofi sudo askpass helper
export SUDO_ASKPASS=~/.config/openbox/bin/askpass_rofi.sh

## zenity sudo askpass helper
#export SUDO_ASKPASS=~/.config/openbox/bin/askpass_zenity.sh

## execute the application
sudo -A $1

#!/bin/bash

rofi -no-lazy-grab -show drun \
-config ~/.config/rofi/themes/config.simple \
-display-drun "Applications " -drun-display-format "{name}" \
-hide-scrollbar true \
-bw 0 \
-lines 12 \
-line-padding 5 \
-padding 20 \
-width 35 \
-xoffset 0 -yoffset 0 \
-location 0 \
-columns 2 \
-show-icons -icon-theme "Papirus" \

#!/bin/bash

MUSIC_DIR=$HOME/Music

COVER=/tmp/cover.jpg

function reset_background
{
    printf "\e]20;;100x100+1000+1000\a"
}

{
    album="$(mpc --format %album% current)"
    file="$(mpc --format %file% current)"
    album_dir="${file%/*}"
    [[ -z "$album_dir" ]] && exit 1
    album_dir="$MUSIC_DIR/$album_dir"

    covers="$(find "$album_dir" -type d -exec find {} -maxdepth 1 -type f -iregex ".*/.*\(${album}\|cover\|folder\|artwork\|front\).*[.]\(jpe?g\|png\|gif\|bmp\)" \; )"
    src="$(echo -n "$covers" | head -n1)"
    rm -f "$COVER" 
    if [[ -n "$src" ]] ; then
        #resize the image's height to 300px & extent it to cover the urxvt length
        #convert "$src" -resize 300x -background "#263238" -extent 1100x400 "$COVER"
        convert "$src" -resize 400x -background "#141c21" -extent 1100x400 "$COVER"
        if [[ -f "$COVER" ]] ; then
        
           #-- original script --
           #scale down the cover to 30% of the original
           #place it 1% away from left and 50% away from top.
           #printf "\e]20;${COVER};80x80+0+60:op=keep-aspect\a"
           #---------------------
           
           #no need to scale down, i have extent it
           printf "\e]20;${COVER};100x100+0+0:op=keep-aspect\a"
        else
            reset_background
        fi
    else
        reset_background
    fi
} &

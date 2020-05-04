#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

## Dirs
polybar_path="$HOME/.config/polybar"
rofi_path="$HOME/.config/rofi/themes"
termite_path="$HOME/.config/termite"
geany_path="$HOME/.config/geany"
openbox_path="$HOME/.config/openbox"
dunst_path="$HOME/.config/dunst"

## Dark Mode #############################################
if  [[ $1 = "--Dark" ]]; then

# wallpaper ---------------------------------
nitrogen --save --set-zoom-fill /usr/share/backgrounds/bg_1.jpg

# polybar ---------------------------------
sed -i -e 's/bg = .*/bg = #212B30/g' $polybar_path/colors.ini
sed -i -e 's/bg-alt = .*/bg-alt = #5C6F7B/g' $polybar_path/colors.ini
sed -i -e 's/fg = .*/fg = #C4C7C5/g' $polybar_path/colors.ini
sed -i -e 's/ac = .*/ac = #4DD0E1/g' $polybar_path/colors.ini

sed -i -e 's/red = .*/red = #EC7875/g' $polybar_path/colors.ini
sed -i -e 's/pink = .*/pink = #EC407A/g' $polybar_path/colors.ini
sed -i -e 's/purple = .*/purple = #BA68C8/g' $polybar_path/colors.ini
sed -i -e 's/blue = .*/blue = #42A5F5/g' $polybar_path/colors.ini
sed -i -e 's/cyan = .*/cyan = #4DD0E1/g' $polybar_path/colors.ini
sed -i -e 's/teal = .*/teal = #00B19F/g' $polybar_path/colors.ini
sed -i -e 's/green = .*/green = #61C766/g' $polybar_path/colors.ini
sed -i -e 's/lime = .*/lime = #B9C244/g' $polybar_path/colors.ini
sed -i -e 's/yellow = .*/yellow = #FDD835/g' $polybar_path/colors.ini
sed -i -e 's/amber = .*/amber = #FBC02D/g' $polybar_path/colors.ini
sed -i -e 's/orange = .*/orange = #E57C46/g' $polybar_path/colors.ini
sed -i -e 's/brown = .*/brown = #AC8476/g' $polybar_path/colors.ini
sed -i -e 's/indigo = .*/indigo = #6C77BB/g' $polybar_path/colors.ini

# relaunch polybar
polybar-msg cmd restart

# rofi ---------------------------------
sed -i -e 's/background: .*/background:    #212B30ff;/g' $rofi_path/colors.rasi
sed -i -e 's/background-alt: .*/background-alt:    #263238ff;/g' $rofi_path/colors.rasi
sed -i -e 's/foreground: .*/foreground:    #C4C7C5ff;/g' $rofi_path/colors.rasi
sed -i -e 's/border: .*/border:    #4DD0E1ff;/g' $rofi_path/colors.rasi
sed -i -e 's/selected: .*/selected:    #4DD0E1ff;/g' $rofi_path/colors.rasi
sed -i -e 's/urgent: .*/urgent:    #EC407Aff;/g' $rofi_path/colors.rasi
sed -i -e 's/logo: .*/logo:    #EC407Aff;/g' $rofi_path/colors.rasi
sed -i -e 's/on: .*/on:    #61C766ff;/g' $rofi_path/colors.rasi
sed -i -e 's/off: .*/off:    #EC7875ff;/g' $rofi_path/colors.rasi

sed -i -e 's/background-color:.*/background-color:    #212B30ff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi
sed -i -e 's/text-color: .*/text-color:    #4DD0E1ff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi
sed -i -e 's/passwd:.*/passwd:    #EC407Aff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi

# termite ---------------------------------
sed -i -e 's/background = .*/background = #222D32/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/foreground = .*/foreground = #C4C7C5/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/cursor = .*/cursor = #afbfbf/g' $termite_path/config $termite_path/config_easy

sed -i -e 's/color0 = .*/color0 = #263640/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color1 = .*/color1 = #EC7875/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color2 = .*/color2 = #61C766/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color3 = .*/color3 = #FDD835/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color4 = .*/color4 = #42A5F5/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color5 = .*/color5 = #BA68C8/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color6 = .*/color6 = #4DD0E1/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color7 = .*/color7 = #bfbaac/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color8 = .*/color8 = #4a697d/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color9 = .*/color9 = #FB8784/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color10 = .*/color10 = #70D675/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color11 = .*/color11 = #FFE744/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color12 = .*/color12 = #51B4FF/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color13 = .*/color13 = #C979D7/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color14 = .*/color14 = #5CDFF0/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color15 = .*/color15 = #fdf6e3/g' $termite_path/config $termite_path/config_easy

# reload settings
killall -USR1 termite

# geany ---------------------------------
sed -i -e 's/color_scheme=.*/color_scheme=adapta.conf/g' $geany_path/geany.conf

# gtk theme and icons ---------------------------------
xfconf-query -c xsettings -p /Net/ThemeName -s "Adapta-Nokto-Eta"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Hybrid"

# openbox ---------------------------------
sed -i '/<theme>/{n;d}' $openbox_path/rc.xml
sed -i -e '/^  <theme>/a \ \ \ \ <name>minarch</name>' $openbox_path/rc.xml
openbox --reconfigure

# dunst ---------------------------------
sed -i -e 's#/usr/share/icons/.*/actions#/usr/share/icons/Hybrid/actions#g' $openbox_path/bin/backlight-up
sed -i -e 's#/usr/share/icons/.*/actions#/usr/share/icons/Hybrid/actions#g' $openbox_path/bin/backlight-down
sed -i -e 's#/usr/share/icons/.*/status#/usr/share/icons/Hybrid/status#g' $openbox_path/bin/volume-up
sed -i -e 's#/usr/share/icons/.*/status#/usr/share/icons/Hybrid/status#g' $openbox_path/bin/volume-down

sed -i '/urgency_low/Q' $dunst_path/dunstrc
cat >> $dunst_path/dunstrc <<EOL
[urgency_low]
timeout = 2
background = "#212B30"
foreground = "#C4C7C5"
frame_color = "#4DD0E1"

[urgency_normal]
timeout = 5
background = "#212B30"
foreground = "#C4C7C5"
frame_color = "#4DD0E1"

[urgency_critical]
timeout = 0
background = "#212B30"
foreground = "#EC407A"
frame_color = "#EC407A"
EOL
pkill dunst && dunst &

# Other ---------------------------------
sed -i -e 's/progressbar_color = .*/progressbar_color = "black"/g' $HOME/.ncmpcpp/config

## Light Mode #############################################
elif  [[ $1 = "--Light" ]]; then

# wallpaper ---------------------------------
nitrogen --save --set-zoom-fill /usr/share/backgrounds/bg_2.jpg

# polybar ---------------------------------
sed -i -e 's/bg = .*/bg = #FFFFFF/g' $polybar_path/colors.ini
sed -i -e 's/bg-alt = .*/bg-alt = #CACACA/g' $polybar_path/colors.ini
sed -i -e 's/fg = .*/fg = #555555/g' $polybar_path/colors.ini
sed -i -e 's/ac = .*/ac = #4DA8B9/g' $polybar_path/colors.ini

sed -i -e 's/red = .*/red = #F06A6A/g' $polybar_path/colors.ini
sed -i -e 's/pink = .*/pink = #EC1850/g' $polybar_path/colors.ini
sed -i -e 's/purple = .*/purple = #BA40A0/g' $polybar_path/colors.ini
sed -i -e 's/blue = .*/blue = #427DCD/g' $polybar_path/colors.ini
sed -i -e 's/cyan = .*/cyan = #4DA8B9/g' $polybar_path/colors.ini
sed -i -e 's/teal = .*/teal = #008978/g' $polybar_path/colors.ini
sed -i -e 's/green = .*/green = #5CAC30/g' $polybar_path/colors.ini
sed -i -e 's/lime = .*/lime = #B9A41C/g' $polybar_path/colors.ini
sed -i -e 's/yellow = .*/yellow = #D2A91D/g' $polybar_path/colors.ini
sed -i -e 's/amber = .*/amber = #FD890F/g' $polybar_path/colors.ini
sed -i -e 's/orange = .*/orange = #EA7222/g' $polybar_path/colors.ini
sed -i -e 's/brown = .*/brown = #AC5C4E/g' $polybar_path/colors.ini
sed -i -e 's/indigo = .*/indigo = #4759C6/g' $polybar_path/colors.ini

# relaunch polybar
polybar-msg cmd restart

# rofi ---------------------------------
sed -i -e 's/background: .*/background:    #ffffffff;/g' $rofi_path/colors.rasi
sed -i -e 's/background-alt: .*/background-alt:    #e1e1e1ff;/g' $rofi_path/colors.rasi
sed -i -e 's/foreground: .*/foreground:    #555555ff;/g' $rofi_path/colors.rasi
sed -i -e 's/border: .*/border:    #4DA8B9ff;/g' $rofi_path/colors.rasi
sed -i -e 's/selected: .*/selected:    #4DA8B9ff;/g' $rofi_path/colors.rasi
sed -i -e 's/urgent: .*/urgent:    #EC1850ff;/g' $rofi_path/colors.rasi
sed -i -e 's/logo: .*/logo:    #EC1850ff;/g' $rofi_path/colors.rasi
sed -i -e 's/on: .*/on:    #F06A6Aff;/g' $rofi_path/colors.rasi
sed -i -e 's/off: .*/off:    #5CAC30ff;/g' $rofi_path/colors.rasi

sed -i -e 's/background-color:.*/background-color:    #FFFFFFff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi
sed -i -e 's/text-color: .*/text-color:    #4DA8B9ff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi
sed -i -e 's/passwd:.*/passwd:    #EC1850ff;/g' $openbox_path/bin/askpass.rasi $openbox_path/bin/confirm.rasi

# termite ---------------------------------
sed -i -e 's/background = .*/background = #ffffff/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/foreground = .*/foreground = #303030/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/cursor = .*/cursor = #909090/g' $termite_path/config $termite_path/config_easy

sed -i -e 's/color0 = .*/color0 = #192832/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color1 = .*/color1 = #D75A5A/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color2 = .*/color2 = #4D9D25/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color3 = .*/color3 = #C39B0F/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color4 = .*/color4 = #326EBE/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color5 = .*/color5 = #AA3291/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color6 = .*/color6 = #3C9BAA/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color7 = .*/color7 = #bfbaac/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color8 = .*/color8 = #263640/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color9 = .*/color9 = #F06A6A/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color10 = .*/color10 = #5CAC30/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color11 = .*/color11 = #D2A91D/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color12 = .*/color12 = #427DCD/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color13 = .*/color13 = #BA40A0/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color14 = .*/color14 = #4DA8B9/g' $termite_path/config $termite_path/config_easy
sed -i -e 's/color15 = .*/color15 = #cdc8b9/g' $termite_path/config $termite_path/config_easy

# reload settings
killall -USR1 termite

# geany ---------------------------------
sed -i -e 's/color_scheme=.*/color_scheme=adapta_light.conf/g' $geany_path/geany.conf

# gtk theme and icons ---------------------------------
xfconf-query -c xsettings -p /Net/ThemeName -s "Adapta-Light"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Hybrid_Light"

# openbox ---------------------------------
sed -i '/<theme>/{n;d}' $openbox_path/rc.xml
sed -i -e '/^  <theme>/a \ \ \ \ <name>minarch_light</name>' $openbox_path/rc.xml
openbox --reconfigure

# dunst ---------------------------------
sed -i -e 's#/usr/share/icons/.*/actions#/usr/share/icons/Hybrid_Light/actions#g' $openbox_path/bin/backlight-up
sed -i -e 's#/usr/share/icons/.*/actions#/usr/share/icons/Hybrid_Light/actions#g' $openbox_path/bin/backlight-down
sed -i -e 's#/usr/share/icons/.*/status#/usr/share/icons/Hybrid_Light/status#g' $openbox_path/bin/volume-up
sed -i -e 's#/usr/share/icons/.*/status#/usr/share/icons/Hybrid_Light/status#g' $openbox_path/bin/volume-down

sed -i '/urgency_low/Q' $dunst_path/dunstrc
cat >> $dunst_path/dunstrc <<EOL
[urgency_low]
timeout = 2
background = "#ffffff"
foreground = "#555555"
frame_color = "#4DA8B9"

[urgency_normal]
timeout = 5
background = "#ffffff"
foreground = "#555555"
frame_color = "#4DA8B9"

[urgency_critical]
timeout = 0
background = "#ffffff"
foreground = "#EC1850"
frame_color = "#EC1850"
EOL
pkill dunst && dunst &

# Other ---------------------------------
sed -i -e 's/progressbar_color = .*/progressbar_color = "white"/g' $HOME/.ncmpcpp/config

## Help Menu #############################################
else
echo "
Style Switcher
Developed By - Aditya Shakya (@adi1090x)

Available options:
--Dark	--Light
"
fi

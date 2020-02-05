![logo](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/logo.png) <br />

An Arch Linux Based Custom ISO Made With Archiso, Specially for newbies and DIY enthusiasts.

## Features

+ Offline Installer - Installable ISO
+ Grub - With Themes - Configured/Customized
+ Plymouth - Arch Themes - Configured/Customized
+ Xorg Server / GUI
+ LXDM Display Manager - Configured/Customized
+ Openbox WM (Default), i3WM, Complete LXDE Sessions - Configured/Customized
+ Network Manager - Mobile Broadband, USB/Bluetooth Tethering - Configured/Customized
+ Full File Manager Functionality - Partition Mounting, Network Access, Desktop Icons
+ Virtualbox Support - Configured
+ Compton Tryone - With Blur
+ Dunst - Notifications - Configured For Each Session
+ Polybar - With All My Themes
+ Rofi - Custom Menus, Themes
+ Yay - AUR helper
+ Shell, Vim, Ranger, etc - Configured
+ eDEX-UI - Optional
+ Pulseaudio - Audio Support
+ Mpd, Mpc, Ncmpcpp - Album Art Support
+ Mplayer - Video Player
+ Terminals - termite, urxvt(compiled with pixbuf), xfce4-terminal, lxterminal
+ GUI - Thunar, Pcmanfm, Geany, Leafpad, Atril, Viewnior, Feh, Etc
+ CLI - vim, ranger, mc/mcedit, htop, bmon, nmon, neofetch, Etc

## How To Get

**Download -** You can either download already generated ISO file, or...

[![Download](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/download_iso.png)](ISO_URL_HERE) <br />

**Build ISO -** If you're already using archlinux & want to build the iso, maybe with your config then...

Open the terminal & clone this repo 
```
git clone https://github.com/adi1090x/archlinux.git
```

After cloning, run *setup.sh*, it'll install the dependencies, AUR packages, Fix Permissions, Etc. Be Patient!
```
cd archlinux
chmod +x setup.sh
./setup.sh
```

Now, Change to *customiso* directory & get **ROOT** & Run build command.
```
cd customiso
sudo su
./build.sh -v
```

If, Everything goes well, you'll have the ISO in *customiso/out* directory.

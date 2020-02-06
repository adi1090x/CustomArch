![logo](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/logo.png) <br />

An Arch Linux Based Custom ISO Made With ***Archiso***, Specially for newbies and DIY enthusiasts.

![gif](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/animation.gif) <br />

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

![main](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/main.png) <br />

## How To Get ISO

**1. Download -** You can either download already generated ISO file, or...

[![Download](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/download_iso.png)](ISO_URL_HERE) <br />

**2. Build ISO -** If you're already using archlinux & want to build the iso, maybe with your config then...

Open the terminal & clone this repo 
```
git clone https://github.com/adi1090x/archlinux.git
```

After cloning, run *'setup.sh'*, it'll install the dependencies, AUR packages, Fix Permissions, Etc. Be Patient!
```
cd archlinux
chmod +x setup.sh
./setup.sh
```

Now, Change to *'customiso'* directory & get ***ROOT*** & Run *'build.sh'*
```
cd customiso
sudo su
./build.sh -v
```

If everything goes well, you'll have the ISO in *'customiso/out'* directory.
<br />

## Boot The ISO

**1. Using GRUB -** If you're already using a linux distro, with grub, then you can add following entry in your *'grub.cfg'* file, Replace **"X"** with your partition number, and *'path_to_your_iso'* with ISO path, which can be *(/home/USERNAME/archlinux/customiso/out/archlinux-xxxx.xx.xx-x86_64.iso)* <br />
```
menuentry 'Arch Linux Live' --class arch --class gnu-linux --class linux {
    set root='(hd0,X)'
    set isofile="path_to_your_iso"
    set dri="free"
    search --no-floppy -f --set=root $isofile
    probe -u $root --set=abc
    set pqr="/dev/disk/by-uuid/$abc"
    loopback loop $isofile
    linux  (loop)/arch/boot/x86_64/vmlinuz img_dev=$pqr img_loop=$isofile driver=$dri quiet loglevel=3 systemd.show_status=false udev.log-priority=3 vt.global_cursor_default=0 splash cow_spacesize=1G
    initrd  (loop)/arch/boot/intel_ucode.img (loop)/arch/boot/x86_64/archiso.img
}

```
<br />

**2. Using dd -** Alternatively, you can use ***dd*** command to make a bootable USB_Drive/SDcard, Just open the terminal and... <br />
```
sudo su
dd bs=4M if=path_to_iso of=/dev/sdX status=progress oflag=sync
```
<br />

**3. Using Etcher -** If you use *Windows*, or maybe linux but afraid of ***dd***, then you can use [Etcher](https://www.balena.io/etcher/) to make a bootable USB/SDcard.
<br />

## Overview

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/openbox.jpeg"> **Openbox**
+ Theme - [Arc Theme](https://github.com/horst3180/arc-theme)
+ Icons - [Arc Icon Theme](https://github.com/horst3180/arc-icon-theme)
+ Fonts - [Terminus](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Terminus/terminus-ttf-4.40.1)
+ Screenshots - [More Here]()
<br />

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/i3wm.jpeg"> **i3wm**
+ Theme - [Arc Theme](https://github.com/horst3180/arc-theme)
+ Icons - [Arc Icon Theme](https://github.com/horst3180/arc-icon-theme)
+ Fonts - [Terminus](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Terminus/terminus-ttf-4.40.1) & [Noto Sans](https://github.com/googlefonts/noto-fonts)
+ Screenshots - [More Here]()
<br />

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/lxde.jpeg"> **Lxde**
+ Theme - [Adapta Theme](https://github.com/adapta-project/adapta-gtk-theme)
+ Icons - [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
+ Fonts - [Noto Sans](https://github.com/googlefonts/noto-fonts)
+ Screenshots - [More Here]()
<br />

***Extra***

+ I've installed three Sessions in the ISO, *Openbox* is the default Session, *i3wm* specially for terminals and *Lxde*, if you're too lazy to use keyboard.
+ Personally, i love eDEX-UI, So i've added it in *setup.sh*, it's optional for you.
+ Default grub is ugly and on arch linux, well it sucks, so i've configured it to sush it completely & added custom entries &
a beautiful theme.
+ Also, I tricked the AUR plymouth pkg to have this heart-beat kinda theme, so i can have it on ISO's initrd.
+ I've made this *adapta* style lxdm theme, which looks... good, i guess, At first i configred *lightdm* with *webkit2-greeter*, but it was very slow and buggy, so i replaced it with *lxdm*. well, it's on you, you want lightdm... *Source is yours.*

Grub|Plymouth
:--:|:--:
![img](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/grub.jpeg)|![img](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/plymouth.jpeg)

Lxdm|eDEX-UI
:--:|:--:
![img](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/lxdm.jpeg)|![img](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/edex.png)
<br />

## Installation

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/install.jpeg"> This ISO can be installed, Offline, thanks to [ABIF](). I've tested & installed it on a **USB Drive, SDcard, HDD & Virtualbox**, works as expected. Just Don't forget to install *virtualbox guest additions* after installing it on [vbox]().
<br />
<br />
The installer is very simple and easy to use, but what if you're still a *windows* guy. So i've made a step by step guide on how to install it - [Here, How To Install It]()
<br />
<br />

## Few Words

+ **Important -** I've tested it on two laptops, with intel pantium & i3 CPUs. obviously ISO have intel-video drivers, if you have nvidia or something, edit *packages.x86_64* and replace the drivers section with your GPU drivers packages, or WM/DE might freeze on startup.
+ You may have to modify some config files according to your system, (i mean that's the goal, right). Ex- *customiso/airootfs/etc/skel/.config/i3status/config*, *customiso/airootfs/etc/skel/.config/polybar/modules.ini* for *Battery* & *Network* Modules.
+ It's a 64-bit only ISO/OS.
+ Arch is not beginner's friendly OS, so if it's your first time with arch linux... then your welcome, i've made it easy for you. JUST KIDDING... But sure, you're gonna learn a lot with this ISO, & specially by *it's Source*, it'll give you a picture of how a linux system works.

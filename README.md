![gif](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/banner.png)

<p align="center">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/adi1090x/archlinux?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/adi1090x/archlinux?color=violet&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/adi1090x/archlinux?color=teal&style=for-the-badge">
  <img src="https://img.shields.io/github/stars/adi1090x/archlinux?style=for-the-badge">
</p>

<p align="center">
<a href="https://www.buymeacoffee.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/bmac.png" alt="Buy Me A Coffee"></a>
<a href="https://ko-fi.com/adi1090x"><img src="https://raw.githubusercontent.com/adi1090x/files/master/other/kofi.png" alt="Support me on ko-fi"></a>
</p>

<p align="center">
An <a href="https://www.archlinux.org">Arch Linux</a> Based Custom ISO Made With <b>Archiso</b>, Specially for newbies and DIY enthusiasts.
</p>

![gif](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/animation.gif) <br />

## Project Moved

<a href="https://archcraft-os.github.io"><img align="right" src="https://raw.githubusercontent.com/archcraft-os/archcraft/master/iso/airootfs/usr/share/pixmaps/archcraft_circle.png" height="160" width="160" alt="Archcraft"></a>

This project just got bigger. It now became a Linux Distribution.

> A Minimalistic Linux Distribution, Focused On Aesthetics & Based On Arch Linux.

+ **Official Website** : [Visit Here](https://archcraft-os.github.io/)
+ **Project Page** : [Archcraft](https://github.com/archcraft-os/archcraft)
+ **Download** : [Sourceforge](https://sourceforge.net/projects/archcraft/files/latest/download)

##

<details>
<summary>Quick Links</summary>
    
- [Installation Guide](https://github.com/adi1090x/archlinux/blob/master/images/Installer/README.md)
- [Openbox](https://github.com/adi1090x/archlinux/blob/master/images/openbox/README.md)
- [I3wm](https://github.com/adi1090x/archlinux/blob/master/images/i3/README.md)
- [LXDE](https://github.com/adi1090x/archlinux/blob/master/images/lxde/README.md)
- [Virtualbox](https://github.com/adi1090x/archlinux/blob/master/images/vbox/README.md)
- [ABIF](https://github.com/adi1090x/archlinux/tree/master/customiso/airootfs/abif-master)
- [Etcher](https://www.balena.io/etcher/)

</details>

## Features

+ Offline Installer - Installable ISO, [Guide Here](https://github.com/adi1090x/archlinux/blob/master/images/Installer/README.md)
+ Enabled Encryption Settings By Default
+ Grub - With Themes - Configured/Customized
+ Plymouth - Arch Themes - Configured/Customized
+ Xorg Server / GUI - *Intel Video Drivers*
+ LXDM Display Manager - Configured/Customized
+ Openbox WM (Default), i3WM & LXDE Sessions - Configured/Customized
+ Network Manager - Mobile Broadband, USB/Bluetooth Tethering, nm-applet,nm_dmenu
+ Full File Manager Functionality - Partition Mounting, Network Access, Thumbnails Etc
+ Virtualbox Support - [Screenshots](https://github.com/adi1090x/archlinux/blob/master/images/vbox/README.md)
+ Compton Tryone - With Blur
+ Dunst - Notifications - Configured For Each Session
+ Polybar - With All [My Themes](https://github.com/adi1090x/polybar-themes)
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
+ And a lot, don't remember everything, check the source

![main](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/main.png) <br />

## How To Get ISO

**1. Download -** You can either download already generated ISO file, or...
<p align="center">
  <a href="https://mega.nz/folder/jlJDEK5C#cTuEuQsG-ogAxxeSEIGjiA" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/Mega-Download-red?style=for-the-badge&logo=mega"></a>
</p>
  
**2. Build ISO -** If you're already using archlinux & want to build the iso, maybe with your config then...

***Check list***
- [ ] At least 10GB of free space
- [ ] Arch Linux 64-bit only
- [ ] Clear pacman cache; ```sudo pacman -Scc```
- [ ] Configure everything as *root*
- [ ] Disable auto updates

+ Open the terminal & clone this repo 
```bash
git clone --single-branch --branch master --depth=1 https://github.com/adi1090x/archlinux.git archlinux
```

+ After cloning, run *'setup.sh'*, it'll install the dependencies, AUR packages, Fix Permissions, Etc. Be Patient!
```bash
cd archlinux
chmod +x setup.sh
./setup.sh
```

+ Now, Change to *'customiso'* directory & get ***ROOT*** & Run *'build.sh'*
```bash
cd customiso
sudo su
./build.sh -v
```

+ If everything goes well, you'll have the ISO in *'customiso/out'* directory. <br />

> If you want to Rebuild the ISO, remove ***work*** & ***out*** dirs inside `customiso` directory first. then run `./build.sh -v` as **root**. You don't need to run *'setup.sh'* again, it's a one time process only. 

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
```bash
sudo su
dd bs=4M if=path_to_iso of=/dev/sdX status=progress oflag=sync
```
<br />

**3. Using Etcher -** If you use *Windows*, or maybe linux but afraid of ***dd***, then you can use [Etcher](https://www.balena.io/etcher/) to make a bootable USB/SDcard. More Options [Here](https://wiki.archlinux.org/index.php/USB_flash_installation_media)
<br />

## Overview

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/openbox.jpeg"> **Openbox**
+ Theme - [Arc Theme](https://github.com/horst3180/arc-theme)
+ Icons - [Arc Icon Theme](https://github.com/horst3180/arc-icon-theme)
+ Fonts - [Terminus](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Terminus/terminus-ttf-4.40.1)
+ Screenshots - [More Here](https://github.com/adi1090x/archlinux/blob/master/images/openbox/README.md)
<br />
<br />

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/i3wm.jpeg"> **i3wm**
+ Theme - [Arc Theme](https://github.com/horst3180/arc-theme)
+ Icons - [Arc Icon Theme](https://github.com/horst3180/arc-icon-theme)
+ Fonts - [Terminus](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Terminus/terminus-ttf-4.40.1) & [Noto Sans](https://github.com/googlefonts/noto-fonts)
+ Screenshots - [More Here](https://github.com/adi1090x/archlinux/blob/master/images/i3/README.md)
<br />
<br />

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/lxde.jpeg"> **Lxde**
+ Theme - [Adapta Theme](https://github.com/adapta-project/adapta-gtk-theme)
+ Icons - [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
+ Fonts - [Noto Sans](https://github.com/googlefonts/noto-fonts)
+ Screenshots - [More Here](https://github.com/adi1090x/archlinux/blob/master/images/lxde/README.md)
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

## Installation

<img align="right" width="300" src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/install.jpeg"> This ISO can be installed, Offline, thanks to [ABIF](https://github.com/adi1090x/archlinux/tree/master/customiso/airootfs/abif-master). I've tested & installed it on a **USB Drive, SDcard, HDD & Virtualbox**, works as expected. Just Don't forget to install *virtualbox guest additions* after installing it on [vbox](https://github.com/adi1090x/archlinux/blob/master/images/vbox/README.md).
<br />
<br />
The installer is very simple and easy to use, but what if you're still a *windows* guy or a *softcore linux user* (Coz arch is for **Hardcore linux users**, Did you get it? NEVERMIND :P). So i've created a step by step guide on how to install it - [Here, How To Install It.](https://github.com/adi1090x/archlinux/blob/master/images/Installer/README.md)
<br />

### Support This Project
<p align="left">
<a href="https://www.paypal.me/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/paypal-adi1090x-blue?style=for-the-badge&logo=paypal"></a>
<a href="https://www.buymeacoffee.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/BuyMeAcoffee-adi1090x-orange?style=for-the-badge&logo=buy-me-a-coffee"></a>  
<a href="https://ko-fi.com/adi1090x" target="_blank"><img alt="undefined" src="https://img.shields.io/badge/KoFi-adi1090x-red?style=for-the-badge&logo=ko-fi"></a>  
</p>

## Few Words

+ I'm really bad at *Naming Things*, So i've kept it simple - just ***Archlinux***. 
+ Default **username** and **password** is ***liveuser*** (Live ISO Only).
+ After installing this ISO, run ```sudo pacman -Syy``` to fix pacman. it'll just download packages database.
+ In this ISO, I've enabled **encryption settings (luks/dm-crypt)** by default. If you're installing it without encryption, there will be no issue, but these settings are useless for you in this case. So after normal installation, comment out `GRUB_ENABLE_CRYPTODISK=y` in */etc/default/grub* and remove `plymouth-encrypt` hook in */etc/mkinitcpio.conf* and rebuilt initrd.
+ **Important -** I've tested it on two laptops, with intel pantium & i3 CPUs. Obviously ISO have intel-video drivers, if you have *nvidia* or something, edit *packages.x86_64* and replace the drivers section with your GPU drivers packages, or WM/DE might freeze on startup.
+ My display resolution is 1366x768, if you have a 1920x1080 Display, then you have to edit *customiso/airootfs/etc/skel/.config/rofi/themes/shared/settings.rasi* or *$HOME/.config/rofi/themes/shared/settings.rasi* & replace it with your display resolution for *rofi-menus* to work.
+ You may have to modify some config files according to your system, (i mean that's the goal, right). ***Ex-*** *customiso/airootfs/etc/skel/.config/i3status/config*, *customiso/airootfs/etc/skel/.config/polybar/modules.ini* for *Battery* & *Network* Modules.
+ By default, touchpad is disabled. To enable it... Open Settings manager & goto *'Mouse & Touchpad>Touchpad>Tap to click'*.
+ While installing it on the USB, installer seems like it freezed when grub was installing. Problem it - *os-prober* was taking a long time to detect other OS installed on system. it took 10-12 mins to complete. on other media (SDcard & HDD), there was no such issue. Maybe it's a bug related to os-prober, thought i should mention it here. if you face it, pls wait!
+ It's a 64-bit only ISO/OS.
+ ***Updates:*** Well, the best things is, you'll always get the latest Linux kernel, Archlinux System & Packages, if you `build it`. if you can't, Then Install this ISO, run `sudo pacman -Sy archlinux-keyring && sudo pacman -Syu` & DONE, you'll have the latest Arch Linux system.
+ Arch is not beginner's friendly OS, so if it's your first time with arch linux... *your welcome*, i've made it easy for you. JUST KIDDING... But sure, you're gonna learn a lot with this ISO, & specially by *it's Source*, it'll give you a picture of how a linux system works.
+ This project is just a derivative of Arch Linux, It's Not [Arch Linux](https://www.archlinux.org) itself.
+ Share this **repo** with your friends/classmates/colleagues who're new to linux/Archlinux.

<!--
### Sources
+ Theme - [Arc Theme](https://github.com/horst3180/arc-theme) & [Adapta Theme](https://github.com/adapta-project/adapta-gtk-theme)<br />
+ Icons - [Arc Icon Theme](https://github.com/horst3180/arc-icon-theme) & [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)<br />
+ Fonts - [Terminus](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Terminus/terminus-ttf-4.40.1) & [Noto Sans](https://github.com/googlefonts/noto-fonts)<br />
+ Plymouth - [Arch-beat](https://github.com/nenad/arch-beat)<br />
+ Grub2 - [Grub2-themes](https://github.com/vinceliuice/grub2-themes)<br />
+ Rofi - [Rofi-menus](https://gitlab.com/vahnrr/rofi-menus)<br />
+ eDEX-UI - [eDEX](https://github.com/GitSquared/edex-ui)<br />
+ Some Configs - [Here](https://github.com/addy-dclxvi/dotfiles)
-->

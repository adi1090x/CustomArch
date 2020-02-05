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

## Booting The ISO

![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/grub.jpeg) <br />
![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/plymouth.jpeg) <br />
![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/lxdm.jpeg) <br />
![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/openbox.jpeg) <br />
![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/i3wm.jpeg) <br />
![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/lxde.jpeg) <br />

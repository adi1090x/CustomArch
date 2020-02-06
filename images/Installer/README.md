![logo](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/logo_inst.png) <br />

![image](https://raw.githubusercontent.com/adi1090x/archlinux/master/images/install.jpeg) <br />

The best thing about this ISO is, It can be installed (Offline) on a system as well as on a USB/SDcard. I've included the Pacbang-iso installer [abif](https://github.com/adi1090x/archlinux/tree/master/customiso/airootfs/abif-master) and customized it according to my ISO. Well, It's very simple installer, but as i mentioned earlier that it's newbie friendly arch linux so i'm trying to make a step by step guide on how to install it on your system. follow the steps - 

**(1).** Open the installer, type *'install it'* in menu(Openbox) or execute *'install it'* on the desktop(Lxde). Choose your language and hit OK -
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_1.png">
</p>

**(2).** Now, choose *'Prepare installation'* -
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_2.png">
</p>

**(3).** Choose *'Set Virtual Console'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_3.png">
</p>

**(4).** Set it according to you, i selected *'us'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_4.png">
</p>

**(5).** Choose *'Set Desktop Keyboard Layout'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_5.png">
</p>

**(6).** Again, according to you, mine is *'us'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_6.png">
</p>

**(7).** Next is *'List Devices'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_7.png">
</p>

**(8).** Here you can see your partitions and USB drives, decide where you want to install it.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_8.png">
</p>

**(9).** Now Select *'Partition Disk'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_9.png">
</p>

**(10).** Select disk you want to partition, i'm installing it on USB so mine is *'/dev/sdb'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_10.png">
</p>

**(11).** Here you can choose the option suits you, either you can choose *'Automatic Partitioning'* if you don't know what to do, this will wipe the drive and automatically create new partiton or you can select *'cfdisk'* to partition the disk. i'm going with cfdisk
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_11.png">
</p>

**(12).** Delete *'existing partitions'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_12.png">
</p>

**(13).** Create a new partition of type *'Linux'* and make it *'Bootable'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_13.png">
</p>

**(14).** I'm ignoring *'LUKS Encryption & LVM'*, if you want to encrypt filesystem you can go for it. Now Select *'Mount Partitions'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_14.png">
</p>

**(15).** Choose the partition you created, Mine is *'/dev/sdb1'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_15.png">
</p>

**(16).** Select type *'ext4'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_16.png">
</p>

**(17).** Ignore it too, *'Not Necessary'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_17.png">
</p>

**(18).** If you want a seperate swap partition, then create it first in step 13, i'm going for *'swapfile'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_18.png">
</p>

**(19).** Adjust size of the swapfile, make sure it's same in size as *'RAM'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_19.png">
</p>

**(20).** Now Partition is mounted, Hit *'Back'*, for main menu
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_20.png">
</p>

**(21).** Select *'Install Base'*, it'll install base system to partition, created initrd & install grub bootloader.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_21.png">
</p>

**(22).** Select *'Install Base Packages'*, And Wait...
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_22.png">
</p>

**(23).** Now the rootfs is *'Coping'* in the System
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_23.png">
</p>

**(24).** After installing base packages, Choose *'Run Mkinitcpio'*.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_24.png">
</p>

**(25).** It'll generate *'initial ram disks'* in boot dir.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_25.png">
</p>

**(26).** Now Select *'Install Bootloader'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_26.png">
</p>

**(27).** Choose *'grub'*, you can install other bootloader if you want.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_27.png">
</p>

**(28).** Select the *'Disk'*, Mine is *'/dev/sdb'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_28.png">
</p>

**(29).** Now Wait, in some cases, *'os-prober'* takes 10-12 mins to detect other OS. So, it may look like it's freezed, but it's not. wait at least 20 mins if it happens for you.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_29.png">
</p>

**(30).** Now, Grub should be instaled, Hit *'Back'* again
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_30.png">
</p>

**().** Select *'Configure Base'*, It'll configure the installed system.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_31.png">
</p>

**().** Select *'Generate FSTAB'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_32.png">
</p>

**().** Choose 3rd option *'Device UUID'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_33.png">
</p>

**().** Set *'Hostname'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_34.png">
</p>

**().** Whatever you *'like'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_35.png">
</p>

**().** Choose *'Set System Locale'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_36.png">
</p>

**().** I'm going for *'en_US.UTF-8'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_37.png">
</p>

**().** Choose *'Set Timezone and Clock'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_38.png">
</p>

**().** And Choose, according to you, Hit *'Yes'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_39.png">
</p>

**().** Select *'utc'* or *'localtime'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_40.png">
</p>

**().** Select *'Set Root Password'* for root login
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_41.png">
</p>

**().** Type a strong *'password'* & hit Ok
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_42.png">
</p>

**().** Select *'Add New User(s)'* to create a non-root user
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_43.png">
</p>

**().** Type the *'username'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_44.png">
</p>

**().** And *'password'* for *'Regular user'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_45.png">
</p>

**().** And *'Done'*, User Added.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_46.png">
</p>

**().** Next is *'Security and Systemd Tweaks'*, Not Really Needed.
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_47.png">
</p>

**().** Ignore & hit *'Ok'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_48.png">
</p>

**().** Next Option is *'Review Configuration Files'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_49.png">
</p>

**().** Now, if you want to review the config files, choose the option and it'll open the file in *'geany'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_50.png">
</p>

**().** I've already configured everything in ISO, so nothing to do here. hit *'back'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_51.png">
</p>

**().** And *'Done'*, System Installed
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_52.png">
</p>

**().** Hit Yes and *'close installer'*
<p align="center">
  <img src="https://raw.githubusercontent.com/adi1090x/archlinux/master/images/Installer/abif_53.png">
</p>

Now Archlinux is installed on your system. Reboot the Computer.<br />

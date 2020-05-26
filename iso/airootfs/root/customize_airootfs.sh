#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

usermod -s /usr/bin/zsh root

## Liveuser
useradd -m -p $(openssl passwd liveuser) -g users -G "adm,audio,floppy,log,network,rfkill,scanner,storage,optical,power,wheel" -s /bin/zsh liveuser
chown -R liveuser:users /home/liveuser

sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf

systemctl enable pacman-init.service choose-mirror.service
systemctl set-default graphical.target

## Services
systemctl enable NetworkManager.service 
systemctl enable wpa_supplicant.service
systemctl enable lxdm-plymouth.service
systemctl enable betterlockscreen@$USER

## Mods
sed -i -e 's/MODULES=()/MODULES=(i915)/g' /etc/mkinitcpio.conf
sed -i -e 's/HOOKS=(base udev autodetect modconf block filesystems keyboard fsck)/HOOKS=(base udev plymouth plymouth-encrypt block filesystems keyboard)/g' /etc/mkinitcpio.conf
cp /usr/bin/networkmanager_dmenu /usr/local/bin/nmd && sed -i 's/config.ini/nmd.ini/g' /usr/local/bin/nmd
sed -i -e 's/Inherits=.*/Inherits=Hybrid,Papirus,Moka,Adwaita,hicolor/g' /usr/share/icons/Arc/index.theme

## Lightdm
# systemctl enable lightdm-plymouth.service
# sed -i -e 's/#greeter-session=.*/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf
# sed -i -e 's/#minimum-vt=.*/minimum-vt=1/g' /etc/lightdm/lightdm.conf

## Other
rm -rf /usr/share/xsessions/openbox-kde.desktop
rm -rf /usr/share/applications/xfce4-about.desktop
mv /etc/zsh/zshrc /etc/zsh/zshrc.org

## Remove localrepo lines
sed -i '$d' /etc/pacman.conf && sed -i '$d' /etc/pacman.conf && sed -i '$d' /etc/pacman.conf

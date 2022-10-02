#!/usr/bin/env bash

echo "terminator &" > ~/.xinitrc
echo "exec jwm" > ~/.xinitrc

# xorg
pacman --needed -S xorg-server xorg-xdpyinfo xorg-xev xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xorg-xsetroot xorg-xwayland 
# core
pacman --needed -S linux-headers git ntfs-3g openssh refind nvidia-dkms nvidia-settings
# desktop
pacman --needed -S jwm terminator pcmanfm lxappearance lxqt-notificationd lxrandr nitrogen dmenu redshift scrot xterm 
# browser
pacman --needed -S firefox opera opera-ffmpeg-codecs vivaldi vivaldi-ffmpeg-codecs 
# entertainment
pacman --needed -S moc mpv pcsx2 steam 
# cli
pacman --needed -S atool bash-completion btop ffmpeg ffmpeg4.4 htop imagemagick micro  ncdu newsboat pulsemixer rsync weechat xbindkeys xcolor xdotool yt-dlp 
# gui and other
pacman --needed -S galculator gimp gparted keepassxc meld scite veracrypt virtualbox virtualbox-guest-utils noto-fonts noto-fonts-emoji ttf-liberation

#enable services
systemctl enable sshd
systemctl start sshd

echo
echo
echo " After installing rEFInd and running refind-install add 'nvidia-drm.modeset=1 ibt=off' to kernel parameters in /boot/refind_linux.conf"
echo
echo

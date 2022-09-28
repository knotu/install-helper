#!/usr/bin/env bash

pkgs=(xorg-server xorg-xdpyinfo xorg-xev xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xorg-xsetroot xorg-xwayland

linux-headers git ntfs-3g openssh refind

jwm terminator pcmanfm lxappearance lxqt-notificationd lxrandr nitrogen dmenu redshift scrot xterm

firefox opera opera-ffmpeg-codecs vivaldi vivaldi-ffmpeg-codecs

moc mpv pcsx2 steam

atool bash-completion btop ffmpeg ffmeg4.4 htop nano ncdu newsboat pulsemixer rsync weechat xbindkeys xcolor xdotool yt-dlp

galculator gimp keepassxc meld scite veracrypt virtualbox virtualbox-guest-additions

nvidia-dkms nvidia-settings

noto-fonts noto-fonts-emoji)

pacman --noconfirm --needed -S  ${pkgs}
#enable services
sudo systemctl enable sshd
sudo systemctl start sshd

echo " After installing rEFInd and running refind-install add 'ibt=off' to kernel parameters in /boot/refind_linux.conf"



#!/usr/bin/env bash

# Notes: add 'nvidia-drm.modeset=1 ibt=off' to kernel parameters in /boot/refind_linux.conf if running nvidia

### Install ###

# xorg
pacman --needed -S xorg-server xorg-xdpyinfo xorg-xev xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xorg-xsetroot 
# gpu
#pacman --needed -S nvidia-dkms nvidia-settings
pacman --needed -S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon corectrl
# core
pacman --needed -S linux-headers git ntfs-3g openssh udisks2 refind
# desktop
pacman --needed -S jwm pcmanfm dunst dmenu xclip xterm   
# browser
pacman --needed -S firefox vivaldi vivaldi-ffmpeg-codecs 
# entertainment
pacman --needed -S moc mpv pcsx2 steam mtpaint feh
# cli
pacman --needed -S atool bash-completion btop ffmpeg ffmpeg4.4 imagemagick micro ncdu newsboat pulsemixer rsync weechat sxhkd vivid xdotool yt-dlp shfmt
# gui and other
pacman --needed -S galculator gparted keepassxc meld scite veracrypt noto-fonts noto-fonts-emoji ttf-liberation qemu
# wayland related
pacman --needed -S river i3bar-river i3status i3blocks wlr-randr grim wf-record swayimg swaybg slurp foot bemenu wev wtype

#enable services
systemctl enable --now sshd

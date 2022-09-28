#!/usr/bin/env bash

xorg_pkgs=(xorg-server xorg-xdpyinfo xorg-xev xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xorg-xsetroot xorg-xwayland)

core_pkgs=(linux-headers git ntfs-3g openssh refind)

desktop_pkgs=(jwm terminator pcmanfm lxappearance lxqt-notificationd lxrandr nitrogen dmenu redshift scrot xterm)

browser_pkgs=(firefox opera opera-ffmpeg-codecs vivaldi vivaldi-ffmpeg-codecs)

entertainment_pkgs=(moc mpv pcsx2 steam)

cli_pkgs=(atool bash-completion btop ffmpeg ffmeg4.4 htop nano ncdu newsboat pulsemixer rsync weechat xbindkeys xcolor xdotool yt-dlp)

gui_pkgs=(galculator gimp keepassxc meld scite veracrypt virtualbox virtualbox-guest-additions)

nv_pkgs=(nvidia-dkms nvidia-settings)

font_pkgs=(noto-fonts noto-fonts-emoji)

pacman --noconfirm --needed -S  ${xorg_pkgs}
pacman --noconfirm --needed -S  ${core_pkgs}
pacman --noconfirm --needed -S  ${desktop_pkgs}
pacman --noconfirm --needed -S  ${browser_pkgs}
pacman --noconfirm --needed -S  ${entertainment_pkgs}
pacman --noconfirm --needed -S  ${cli_pkgs}
pacman --noconfirm --needed -S  ${other_gui_pkgs}
pacman --noconfirm --needed -S  ${nv_pkgs}
pacman --noconfirm --needed -S  ${font_pkgs}

#enable services
sudo systemctl enable sshd
sudo systemctl start sshd

echo " After installing rEFInd and running refind-install add 'ibt=off' to kernel parameters in /boot/refind_linux.conf"



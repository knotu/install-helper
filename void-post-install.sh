#!/usr/bin/env bash

# update the system
sudo xbps-install -Suy

# add nonfree repo for things like steam
sudo xbps-install -Sy void-repo-nonfree

# add multilib for things like lib32 mesa
sudo xbps-install -Syv void-repo-multilib{,-nonfree}
sudo xbps-install -Syv void-repo-multilib

# development
sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel

# xorg-minimal and graphics
sudo xbps-install xorg-minimal corectrl mesa-dri mesa-vaapi mesa-vdpau xf86-video-amdgpu vulkan-loader mesa-vulkan-radeon 

# desktop and gui based 
sudo xbps-install dmenu dunst firefox gparted jwm keepassxc meld moc mpv mtpaint pcmanfm scite steam synergy

# audio and video
sudo xbps-install elogind ffmpeg moc mpv pipewire pulsemixer 

# cli based
sudo xbps-install alacritty atool bash-completion bashmount btop ImageMagick micro ncdu newsboat rsync sxhkd weechat xdotool xrdb xterm stools xwallpaper yt-dlp

# fonts
sudo xbps-install liberation-fonts-ttf noto-fonts-emoji noto-fonts-ttf xorg-fonts

# enable dbus
sudo ln -s /etc/sv/dbus /var/service

# enable elogind
sudo ln -s /etc/sv/elogind /var/service

## XBPS source packages (for building)
# clone repo

git clone --depth=1 https://github.com/void-linux/void-packages.git

#cd void-packages
#./xbps-src binary-bootstrap
# xbps-src update-check
# 


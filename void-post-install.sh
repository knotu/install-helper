#!/usr/bin/env bash

set -e

## updating and setting up repos

# add nonfree repo for things like steam
sudo xbps-install -Sy void-repo-nonfree

# add multili(mesa)
sudo xbps-install -Syv void-repo-multilib{,-nonfree}

# update the system
sudo xbps-install -Suy
sudo xbps-install -u xbps

## installing additional packages

# development
sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel

# xorg-minimal and graphics
sudo xbps-install xorg-minimal corectrl mesa-dri mesa-vaapi mesa-vdpau xf86-video-amdgpu vulkan-loader mesa-vulkan-radeon libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-vulkan-radeon-32bit vulkan-loader-32bit

# desktop and gui based 
sudo xbps-install dmenu dunst firefox gparted jwm keepassxc meld moc mpv mtpaint pcmanfm scite steam synergy xsetroot xwallpaper

# audio and video
sudo xbps-install elogind ffmpeg moc mpv pipewire pulsemixer alsa-plugins-pulseaudio

# cli based
sudo xbps-install alacritty atool bash-completion bashmount btop ImageMagick lm_sensors micro ncdu newsboat rsync sxhkd weechat xdotool xrdb xterm xtools yt-dlp

# unsorted various
sudo xbps-install libgcc-32bit libstdc++-32bit xset xrandr gtk+ imlib2 xkill 

# fonts
sudo xbps-install liberation-fonts-ttf noto-fonts-emoji noto-fonts-ttf xorg-fonts

# enable dbus and elogind services
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/elogind /var/service

## XBPS source packages (for building)
# clone repo

#git clone --depth=1 https://github.com/void-linux/void-packages.git

#cd void-packages
#./xbps-src binary-bootstrap
# xbps-src update-check



#!/usr/bin/env bash

set -e

    #root check
    if (( EUID != 0 )); then
            printf "Please run as root\n"
            exit 1
    fi

## updating and setting up repos

# add nonfree repo(steam)
xbps-install -Sy void-repo-nonfree void-repo-multilib{,-nonfree}

# update the system
xbps-install -Suy
xbps-install -u xbps

# kernel
xbps-install linux linux-headers

# development
xbps-install base-devel libX11-devel libXft-devel libXinerama-devel

# xorg related and X related
xbps-install xorg-minimal xorg-fonts xev xdotool xkill xprop xrandr xrdb xset xsetroot xterm xtool xorg-fonts

# graphic and related
xbps-install corectrl mesa-dri mesa-vaapi xf86-video-amdgpu vulkan-loader mesa-vulkan-radeon libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-vulkan-radeon-32bit vulkan-loader-32bit

# desktop and gui based 
xbps-install dmenu dunst firefox gparted jwm keepassxc meld moc mpv mtpaint pcmanfm scite steam synergy sxhkd

# audio and video
xbps-install ffmpeg moc mpv pipewire pulsemixer alsa-plugins-pulseaudio

# cli based
xbps-install alacritty atool bash-completion bashmount btop feh ImageMagick lm_sensors micro ncdu newsboat opendoas psmisc rsync shellcheck weechat yt-dlp

# unsorted various
xbps-install elogind libgcc-32bit libstdc++-32bit gtk+ imlib2 vpm vsv

# fonts
xbps-install noto-fonts-emoji noto-fonts-ttf 

# enable dbus and elogind services
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service

# fix issue with bitmap fonts
ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
xbps-reconfigure -f fontconfig

## XBPS source packages (for building)
# clone repo

#git clone --depth=1 https://github.com/void-linux/void-packages.git

#cd void-packages
#./xbps-src binary-bootstrap
# xbps-src update-check



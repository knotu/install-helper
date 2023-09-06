#!/usr/bin/env bash

set -e

    #root check
    if (( EUID != 0 )); then
            printf "Please run as root\n"
            exit 1
    fi

## updating and setting up repos

# update the system
xbps-install -Suy
xbps-install -u xbps

# add nonfree repo(steam)
xbps-install -Sy void-repo-nonfree void-repo-multilib{,-nonfree}

# kernel
xbps-install linux-mainline linux-mainline-headers

# devel
xbps-install base-devel git libX11-devel libXcursor-devel libXft-devel libXinerama-devel libXrandr-devel libXt-devel libXtst-devel libevdev-devel libxkbcommon-devel meson ninja pango-devel pixman-devel pkg-config scdoc wayland-devel wlroots-devel xcb-util-devel xcb-util-keysyms-devel xcb-util-wm-devel zig

# xorg related
xbps-install xorg-minimal xclip xcolor xdotool xev xeyes xhost xkill xinput xorg-fonts xprop xrandr xrdb xset xsetroot xterm

# wayland related 
xbps-install bemenu kanshi wayland-protocols xorg-server-xwayland wev grim wlr-randr wlrctl wf-recorder sway swaybg swayimg slurp foot wev wtype

# graphic and related
xbps-install mesa-dri mesa-vaapi xf86-video-amdgpu vulkan-loader mesa-vulkan-radeon libdrm-32bit libglvnd-32bit mesa-dri-32bit mesa-vulkan-radeon-32bit vulkan-loader-32bit

# desktop and gui based 
xbps-install dmenu dunst feh firefox galculator gparted i3blocks i3status jwm keepassxc meld pcmanfm scite steam synergy sxhkd vivaldi

# audio and video
xbps-install alsa-plugins-pulseaudio ffmpeg moc mpv pipewire pulsemixer

# cli based
xbps-install 7zip alacritty atool bash-completion bashmount bottom btop curl ImageMagick lm_sensors micro ncdu newsboat opendoas psmisc rsync shellcheck shfmt udiskie vivid weechat wget yt-dlp zip

# void utils & wrappers
xbps-install vpm vsv xmirror xtools 

# fonts
xbps-install noto-fonts-emoji noto-fonts-ttf 

# needs sorted
xbps-install elogind libgcc-32bit libstdc++-32bit gtk+ imlib2 refind qemu

# enable dbus and elogind services
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service

# fix issue with bitmap fonts
ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
xbps-reconfigure -f fontconfig





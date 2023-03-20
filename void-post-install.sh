#!/usr/bin/env bash

# add nonfree repo for things like steam
sudo xbps-install -Sy void-repo-nonfree

# add multilib for things like lib32 mesa
sudo xbps-install -Syv void-repo-multilib{,-nonfree}
sudo xbps-install -Syv void-repo-multilib

sudo xbps-install atool base-devel bash-completion bashmount btop dmenu dunst ffmpeg firefox gparted ImageMagick jwm keepassxc liberation-fonts-ttf meld micro moc mpv mtpaint ncdu newsboat noto-fonts-emoji noto-fonts-ttf pcmanfm pipewire pulsemixer rsync scite steam sxhkd weechat xdotool xorg-fonts xorg-minimal xrdb xterm xwallpaper yt-dlp


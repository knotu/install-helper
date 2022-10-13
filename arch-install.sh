#!/usr/bin/env bash


{
echo 'PATH=$PATH:$HOME/bin' 
echo 
echo 'shopt -s autocd' 
echo "PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls -CF;__new_wd=$PWD' # ls after cding" 
echo 
echo 'alias q='exit'' 
}  >> ~/.bashrc

echo "xterm &" >> ~/.xinitrc
echo "exec jwm" >> ~/.xinitrc


### Install ###


# xorg
pacman --needed -S xorg-server xorg-xdpyinfo xorg-xev xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xorg-xsetroot xorg-xwayland
# core
pacman --needed -S linux-headers git ntfs-3g openssh udisks2 refind nvidia-dkms nvidia-settings
# desktop
pacman --needed -S jwm pcmanfm dunst feh dmenu xterm 
# browser
pacman --needed -S firefox vivaldi vivaldi-ffmpeg-codecs 
# entertainment
pacman --needed -S moc mpv pcsx2 steam 
# cli
pacman --needed -S atool bash-completion btop ffmpeg ffmpeg4.4 imagemagick micro ncdu newsboat pulsemixer rsync weechat xbindkeys xcolor xdotool yt-dlp 
# gui and other
pacman --needed -S galculator gimp gparted keepassxc meld scite veracrypt virtualbox virtualbox-guest-utils noto-fonts noto-fonts-emoji ttf-liberation

#enable services
systemctl enable --now sshd

echo
echo
echo "After installing rEFInd and running refind-install add 'nvidia-drm.modeset=1 ibt=off' to kernel parameters in /boot/refind_linux.conf"
echo
echo

#!/usr/bin/env bash

# add nonfree repo for things like steam
xbps-install -Sy void-repo-nonfree

# add multilib for things like lib32 mesa
xbps-install -Syv void-repo-multilib{,-nonfree}
xbps-install -Syv void-repo-multilib

sudo xbps-install xorg base-devel jwm specrtwm pcmanfm dunst dmenu xterm xwallpaper firefox moc mpv mtpaint atool bash-completion btop ffmpeg ImageMagick micro ncdu newsboat pulsemixer rsync weechat sxhkd xdotool yt-dlp gparted keepassxc meld scite steam liberation-fonts-ttf noto-fonts-ttf noto-fonts-emoji pipewire

{
echo 'PATH=$PATH:$HOME/bin' 
echo 
echo 'shopt -s autocd' 
echo "PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls -CF;__new_wd=$PWD' # ls after cding" 
echo 
echo 'alias q='exit'' 
}  >> ~/.bashrc

mkdir ~/.config/sxhkd

{
echo 'super + r'
echo	 'dmenu_run'
echo
echo 'alt + t'
echo	 'alacritty'
echo
echo 'super + period'
		 'xdotool set_desktop --relative 1'
echo 'super + comma'
echo 	 'xdotool set_desktop --relative -1'

} >> ~/.config/sxhkd/sxhkdrc
 
echo "xterm &" >> ~/.xinitrc
echo "exec spectrwm" >> ~/.xinitrc


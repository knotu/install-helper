#!/usr/bin/env bash

#my quick setup before I copy other settings over

{
echo 'PATH=$PATH:$HOME/bin' 
echo 
echo 'shopt -s autocd'
echo 
echo "PROMPT_COMMAND='[[ \${__new_wd:=\$PWD} != \$PWD ]] && ls -CF;__new_wd=\$PWD' # ls after cding"
echo
echo "alias update='sudo xbps-install -Su'"
echo "alias install='sudo xbps-install'"
echo "alias pkgfind='xbps-query -Rs'"
echo "alias remove='sudo xbps-remove -R'"
echo "alias clean-cache='sudo xbps-remove -O'"
echo "alias orphans='sudo xbps-remove -Oo'"
echo
echo "alias edit='micro'" 
echo "alias q='exit'"
}  >> ~/.bashrc

{
echo "eval \$(dbus-launch --sh-syntax --exit-with-x11)"
echo
echo "pipewire &"
echo "pipewire-pulse &"
echo
echo "xterm &"
echo "exec jwm"
} >> ~/.xinitrc


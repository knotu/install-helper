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


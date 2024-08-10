#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#Display Server Initialization
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]
then
  exec startx
fi

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 2 ]
then
  exec Hyprland
fi

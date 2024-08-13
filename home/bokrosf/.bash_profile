#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#Display Server Initialization
if [ -z "$DISPLAY" ]
then
  case "$XDG_VTNR" in
    1 )
      exec Hyprland
      ;;
    2 )
      exec startx
      ;;
  esac
fi

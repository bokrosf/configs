#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#Display Server Initialization
if [ -z "$DISPLAY" ]
then
  case "$XDG_VTNR" in
    1 )
      exec start-hyprland
      ;;
  esac
fi

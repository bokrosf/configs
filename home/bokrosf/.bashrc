#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mvdesktop='mv ~/*.desktop ~/.local/share/applications/'

# Default Prompt
#PS1='[\u@\h \W]$ '

# Custom Prompt
PS1='\[\e[36m\][\u@\h\[\e[0m\] \w\[\e[36m\]]$\[\e[0m\] '

# Global Variables
export PATH="$PATH:$HOME/tools"
export GRIM_DEFAULT_DIR="$HOME/images/screenshots"

solid_usb="/run/media/$USER/solid"
big_boss_usb="/run/media/$USER/big_boss"
liquid_usb="/run/media/$USER/liquid"


#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Default Prompt
#PS1='[\u@\h \W]$ '

# Custom Prompt
PS1='\[\e[36m\][\u@\h\[\e[0m\] \w\[\e[36m\]]$\[\e[0m\] '

# Global Variables
export PATH="/opt/flutter/bin:$PATH:$HOME/tools"
export GRIM_DEFAULT_DIR="$HOME/pictures/screenshots"

big_boss="/run/media/$USER/big_boss"
liquid_snake="/run/media/$USER/liquid_snake"


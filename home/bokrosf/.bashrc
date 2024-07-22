#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Default
#PS1='[\u@\h \W]$ '

#Custom
PS1='\[\e[36m\][\u@\h\[\e[0m\] \w\[\e[36m\]]$\[\e[0m\] '

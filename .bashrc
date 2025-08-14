#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias p='sudo pacman'
alias v='xdg-open'
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='\u@\h[\W]\$\[\e[0m\] '
# 143, 54, 116
PS1='\[\e[38;2;93;76;121m\]\u@\h[\W]\$\[\e[0m\] '

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias p='sudo pacman'
alias v='xdg-open'
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='\u@\h[\W]\$\[\e[0m\] '
# PS1='\[\e[38;247;129;178;154m\]\u@\h[\W]\$\[\e[0m\] '

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias p='sudo pacman'
alias v='xdg-open'
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
PS1='\[\e[38;2;129;178;154m\]\u@\h[\W]\$\[\e[0m\] '

#
# ~/.bashrc
#

# If not running interactively, don't do anything
#echo " "
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -ial'
alias v='vim'
alias vf='vifm'
alias fam='cd ~/Desktop/famtree'
alias sx='startx'
alias xman='sudo xbps-install'
#alias mi='micro'
alias mouser='sudo modprobe -r psmouse && sudo modprobe psmouse'
alias cch='cargo check'
alias ccr='cargo run'
#export PS1="\e[0;35m[\u@\h \W]\$ \e[m" 
#PS1='[\u@\h \W]\$ '
#\[$(tput bold)\]
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput setaf 3)\][\[$(tput setaf 3)\]\u\[$(tput setaf 3)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 5)\]]\[$(tput setaf 5)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}')\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi
#source "$HOME/.cargo/env"
#source /etc/profile.d/bash_completion.sh
. "$HOME/.cargo/env"

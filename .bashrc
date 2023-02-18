#
# ~/.bashrc
#

export $(dbus-launch)

eval "$(starship init bash)"
export TERM=xterm-256color
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -rthla'
PS1='[\u@\h \W]\$ '

. "$HOME/.cargo/env"
xset b off
xset b 0 0 0

set -o vi

# cd ()
# {
#   builtin cd "$@" && ls  
# }
# ..(){
# builtin cd ..
# }

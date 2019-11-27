
export PS1="\[\e[32m\]\t\[\e[m\] \[\e[36m\]\h\[\e[m\]:\[\e[36m\]\W\[\e[m\] \[\e[33m\]\\$\[\e[m\] "

set -o vi

eval "$(dircolors ~/.dircolors)"

. /usr/share/autojump/autojump.sh
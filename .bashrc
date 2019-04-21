# Bash Reference Manual
# http://www.gnu.org/software/bash/manual/bashref.html

# if not running interactively don't do anything
case $- in *i*) ;; *) return;; esac

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# setting history length
HISTSIZE=100000
HISTFILESIZE=100000

# builtin time command output format
export TIMEFORMAT=$'\e[0;30m\e[47mreal:%Rs user:%Us sys:%Ss cpu:%P%%\e[0m'

# set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# support 256 colors
# only for a simple terminal (not inside screen or tmux)
if [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    export TERM=xterm-256color
fi


# prompt customization
. ~/.bash_prompt

# alias definitions
. ~/.bash_aliases

# enable programmable completion features
. /usr/share/bash-completion/bash_completion

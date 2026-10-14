#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#### ALIAS ####
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias tks='tmux kill-server' # pe chiude server tmux
alias cl='clear' # minchia se sono pigro
alias nv='nvim' # sono troppo pigro
alias tx='tmux'
alias dwl='nmcli device wifi list'
alias dwc='nmcli dev wifi connect'
###############

#### TERMINAL ####
#PS1='[\u@\h \W]\$ '
#PS1="\[\e[38;5;22m\]~\[\e[0m\] "
#PS1="\[\e[38;5;22m\]\W $\[\e[0m\] " # se metto \w invece mostra il percorso completo
PS1="\W $ "
##################

#### PATH ####
#PATH="$PATH:/usr/bin"
# JAVA_HOME=/usr/lib/jvm/java-17-openjdk/
PATH="$JAVA_HOME/bin:$PATH"
PATH="$PATH":"$HOME/.pub-cache/bin"
ANDROID_HOME=$HOME/Android/Sdk/
PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
PATH="$PATH:$ANDROID_HOME/platform-tools/"
PATH="$PATH:$ANDROID_HOME/tools/bin" # nuove aggiunte per android
PATH="$PATH:$ANDROID_HOME/emulator" # nuove aggiunte per android
PATH="$PATH:$ANDROID_HOME/tools/" # nuove aggiunte per android
PATH="$PATH:$HOME/flutter/bin"
PATH="$PATH:/opt/dart-sdk/bin"
PATH="$PATH:/usr/bin"
PATH="$PATH:$HOME/arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi/bin"
#############

#### YAZI ####
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

EDITOR="gedit"
##############

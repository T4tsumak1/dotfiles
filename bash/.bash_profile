#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    start-hyprland
fi

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR_ROUNDING_POLICY=RoundPreferFloor
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_QPA_PLATFORM=wayland


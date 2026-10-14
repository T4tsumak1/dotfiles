#!/bin/bash
# NON SI PUO' USARE SU XWAYLAND SERVERS PK FUNZIONA CON X11
current=$(setxkbmap -query | grep layout | awk '{print $2}')
if [[ $current == "gb" ]]; then
    setxkbmap it
else
    setxkbmap gb
fi


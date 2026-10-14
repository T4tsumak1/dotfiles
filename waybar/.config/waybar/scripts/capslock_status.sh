#!/bin/bash

STATE=$(xset q | grep "Caps Lock:" | awk '{print $4}')

if [ "$STATE" = "on" ]; then
    echo '{"text": "󰪛", "class": "on"}'
else
    echo '{"text": "󰪛", "class": "off"}'
fi


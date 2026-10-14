#!/bin/bash

STATE=$(xset q | grep "Num Lock:" | awk '{print $8}')

if [ "$STATE" = "on" ]; then
    echo '{"text": "󰎦", "class": "on"}'
else
    echo '{"text": "󰎦", "class": "off"}'
fi


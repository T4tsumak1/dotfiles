#!/bin/bash

# Avvio gammastep in verbose per farlo parlare e prendo ultima riga
# PER ANDARE A CAPO COL CODICE METTERE \ ALLA FINE DELLA RIGA
gammastep -c ~/.config/gammastep/config.ini -v 2>&1 | \
grep --line-buffered "Notice: Color temperature:" | \
while read -r line; do
    # vecchia temp=$(echo "$line" | awk '{print $4}')
    temp=$(echo "$line" | sed -n 's/.*Color temperature: \([0-9]\+\)K/\1/p')

    if [[ "$temp" = "4500" ]]; then
        notify-send "Gammastep" "Temperature set to: ${temp}K"
    fi
done

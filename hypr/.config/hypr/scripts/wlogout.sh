res_w=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
res_h=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')
h_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//')
w_margin=$((res_h * 27 / h_scale))
wlogout -b 2 -T $w_margin -B $w_margin
#button_count=$(jq '. | length' ~/.config/wlogout/layout)
#buttons_per_row=2  # imposta manualmente 2 o calcola se vuoi logica dinamica

#wlogout -b $buttons_per_row -T $w_margin -B $w_margin


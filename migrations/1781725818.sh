echo "Add salat prayer times widget to Waybar"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"
WAYBAR_STYLE="$HOME/.config/waybar/style.css"

if [[ -f $WAYBAR_CONFIG ]]; then
  if ! grep -q '"custom/salat"' "$WAYBAR_CONFIG"; then
    sed -i 's/"modules-right": \[/"modules-right": ["custom\/salat",/' "$WAYBAR_CONFIG"
    sed -i '/"custom\/weather": {/i\  "custom/salat": {\n    "exec": "$ERCH_PATH/default/waybar/salat.sh",\n    "return-type": "json",\n    "interval": 60,\n    "tooltip": true,\n    "on-click": "notify-send -u low \\"$(erch-salat-today)\\""\n  },' "$WAYBAR_CONFIG"
  fi
fi

if [[ -f $WAYBAR_STYLE ]] && ! grep -q '#custom-salat' "$WAYBAR_STYLE"; then
  cat >>"$WAYBAR_STYLE" <<'EOF'

#custom-salat {
  margin-left: 7.5px;
  margin-right: 7.5px;
}

#custom-salat.imminent {
  color: #e5c07b;
}

#custom-salat.unavailable {
  min-width: 0;
  margin: 0;
  padding: 0;
}
EOF
fi

erch-restart-waybar

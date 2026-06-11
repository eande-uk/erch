echo "Rename screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'erch-capture-screencording' "$WAYBAR_CONFIG"; then
  sed -i 's/erch-capture-screencording/erch-capture-screenrecording/g' "$WAYBAR_CONFIG"
  erch-restart-waybar
fi

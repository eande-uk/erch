echo "Update Waybar screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'erch-cmd-screenrecord' "$WAYBAR_CONFIG"; then
  sed -i 's/erch-cmd-screenrecord/erch-capture-screenrecording/g' "$WAYBAR_CONFIG"
  erch-restart-waybar
fi

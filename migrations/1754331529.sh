echo "Update Waybar for new erch menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  erch-refresh-waybar
fi

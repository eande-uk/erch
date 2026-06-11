echo "Show battery status notification on right-click of the waybar battery icon"

if ! grep -q 'erch-battery-status' ~/.config/waybar/config.jsonc; then
  sed -i '/"on-click": "erch-menu power",/a\    "on-click-right": "notify-send -u low \\"$(erch-battery-status)\\"",' ~/.config/waybar/config.jsonc
  erch-restart-waybar
fi

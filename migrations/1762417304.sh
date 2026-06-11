echo "Replace bluetooth GUI with TUI"

erch-pkg-add bluetui
erch-pkg-drop blueberry

if ! grep -q "erch-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/erch-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi

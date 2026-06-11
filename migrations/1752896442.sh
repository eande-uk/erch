echo "Replace volume control GUI with a TUI"

if erch-cmd-missing wiremix; then
  erch-pkg-add wiremix
  erch-pkg-drop pavucontrol
  erch-refresh-applications
  erch-refresh-waybar
fi

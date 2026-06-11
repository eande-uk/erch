echo "Install Impala as new wifi selection TUI"

if erch-cmd-missing impala; then
  erch-pkg-add impala
  erch-refresh-waybar
fi

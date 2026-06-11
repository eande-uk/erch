echo "Allow updating of timezone by right-clicking on the clock (or running erch-cmd-tzupdate)"

if erch-cmd-missing tzupdate; then
  bash "$ERCH_PATH/install/config/timezones.sh"
  erch-refresh-waybar
fi

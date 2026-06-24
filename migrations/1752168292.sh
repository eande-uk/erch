echo "Enable battery low notifications for laptops"

if ls /sys/class/power_supply/BAT* &>/dev/null && [[ ! -f $ERCH_PATH/config/systemd/user/erch-battery-monitor.service ]]; then
  mkdir -p ~/.config/systemd/user

  cp $ERCH_PATH/config/systemd/user/erch-battery-monitor.* ~/.config/systemd/user/

  systemctl --user daemon-reload
  systemctl --user enable --now erch-battery-monitor.timer || true
fi

echo "Use erch UWSM session without graphical.target startup wait"

sudo mkdir -p /usr/local/share/wayland-sessions
sudo cp "$ERCH_PATH/default/wayland-sessions/erch.desktop" /usr/local/share/wayland-sessions/erch.desktop

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Session=hyprland-uwsm$/Session=erch/' /etc/sddm.conf.d/autologin.conf
fi

echo "Install swayOSD to show volume status"

if erch-cmd-missing swayosd-server; then
  erch-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi

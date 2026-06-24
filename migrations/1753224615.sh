echo "Adding SwayOSD theming"

if [[ ! -d ~/.config/swayosd ]]; then
  mkdir -p ~/.config/swayosd
  cp -r $ERCH_PATH/config/swayosd/* ~/.config/swayosd/

  pkill swayosd-server
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi

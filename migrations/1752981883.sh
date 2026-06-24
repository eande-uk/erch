echo "Replace wofi with walker as the default launcher"

if erch-cmd-missing walker; then
  erch-pkg-add walker-bin libqalculate

  erch-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r $ERCH_PATH/config/walker/* ~/.config/walker/
fi

echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/erch/themes/hackerman ]]; then
  rm -rf ~/.config/erch/themes/hackerman
  ln -nfs $ERCH_PATH/themes/hackerman ~/.config/erch/themes/
fi

echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/erch/themes/ethereal ]]; then
  rm -rf ~/.config/erch/themes/ethereal
  ln -nfs $ERCH_PATH/themes/ethereal ~/.config/erch/themes/
fi

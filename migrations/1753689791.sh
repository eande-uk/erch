echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/erch/themes/ristretto ]]; then
  ln -nfs $ERCH_PATH/themes/ristretto ~/.config/erch/themes/
fi

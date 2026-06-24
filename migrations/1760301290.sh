echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/erch/themes/flexoki-light ]]; then
  ln -nfs $ERCH_PATH/themes/flexoki-light ~/.config/erch/themes/
fi

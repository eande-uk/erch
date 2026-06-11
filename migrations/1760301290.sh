echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/erch/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/erch/themes/flexoki-light ~/.config/erch/themes/
fi

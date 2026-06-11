echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/erch/themes/ristretto ]]; then
  ln -nfs ~/.local/share/erch/themes/ristretto ~/.config/erch/themes/
fi

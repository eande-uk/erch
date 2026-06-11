echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/erch/themes/ethereal ]]; then
  rm -rf ~/.config/erch/themes/ethereal
  ln -nfs ~/.local/share/erch/themes/ethereal ~/.config/erch/themes/
fi

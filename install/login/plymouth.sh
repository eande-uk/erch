if [[ $(plymouth-set-default-theme) != "erch" ]]; then
  sudo cp -r "$HOME/.local/share/erch/default/plymouth" /usr/share/plymouth/themes/erch/
  sudo plymouth-set-default-theme erch
fi

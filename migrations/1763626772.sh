echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/erch/themes/hackerman ]]; then
  rm -rf ~/.config/erch/themes/hackerman
  ln -nfs ~/.local/share/erch/themes/hackerman ~/.config/erch/themes/
fi

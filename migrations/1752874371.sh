echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/erch/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/erch/themes/catppuccin-latte ~/.config/erch/themes/
fi

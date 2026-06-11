echo "Add minimal starship prompt to terminal"

if erch-cmd-missing starship; then
  erch-pkg-add starship
  cp $ERCH_PATH/config/starship.toml ~/.config/starship.toml
fi

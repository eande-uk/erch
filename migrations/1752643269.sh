echo "Add new matte black theme"

if [[ ! -L $HOME/.config/erch/themes/matte-black ]]; then
  ln -snf $ERCH_PATH/themes/matte-black ~/.config/erch/themes/
fi

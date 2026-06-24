echo "Add new erch Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp $ERCH_PATH/config/omarchy.ttf ~/.local/share/fonts/
fc-cache

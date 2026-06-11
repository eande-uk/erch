echo "Update fastfetch config with new erch logo"

erch-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/erch/branding
cp $ERCH_PATH/icon.txt ~/.config/erch/branding/about.txt

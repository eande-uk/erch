echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $ERCH_PATH/default/elephant/omarchy_background_selector.lua ~/.config/elephant/menus/omarchy_background_selector.lua
erch-restart-walker

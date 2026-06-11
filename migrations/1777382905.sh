echo "Use interactive unlock (Plymouth) selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $ERCH_PATH/default/elephant/omarchy_unlocks.lua ~/.config/elephant/menus/omarchy_unlocks.lua
erch-restart-walker

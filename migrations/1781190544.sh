echo "Fix erch Menu icon — replace stale omarchy.ttf with erch.ttf"
echo "  Overrides migration 1755930114 which referenced the old omarchy font"

mkdir -p ~/.local/share/fonts
rm -f ~/.local/share/fonts/omarchy.ttf
cp $ERCH_PATH/config/erch.ttf ~/.local/share/fonts/
fc-cache

echo "Add sample low battery notification hook"

mkdir -p ~/.config/erch/hooks/battery-low.d

if [[ ! -f ~/.config/erch/hooks/battery-low.d/play-warning-sound.sample ]]; then
  cp "$ERCH_PATH/config/erch/hooks/battery-low.d/play-warning-sound.sample" ~/.config/erch/hooks/battery-low.d/play-warning-sound.sample
fi

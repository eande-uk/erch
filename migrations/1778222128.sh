echo "Add sample post-boot hook"

mkdir -p ~/.config/erch/hooks/post-boot.d

if [[ ! -f ~/.config/erch/hooks/post-boot.d/weather.sample ]]; then
  cp "$ERCH_PATH/config/erch/hooks/post-boot.d/weather.sample" ~/.config/erch/hooks/post-boot.d/weather.sample
fi

echo "Rename lock screen command in Hypridle config"

if grep -q 'erch-lock-screen' ~/.config/hypr/hypridle.conf; then
  sed -i 's/erch-lock-screen/erch-system-lock/g' ~/.config/hypr/hypridle.conf
  erch-restart-hypridle
fi

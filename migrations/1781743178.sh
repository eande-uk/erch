echo "Install Amiri font and configure Arabic support for salat"

# Install Amiri font
if erch-pkg-missing ttf-amiri; then
  erch-pkg-add ttf-amiri
fi

# Add Amiri as preferred Arabic font in fontconfig
FCONFIG="$HOME/.config/fontconfig/fonts.conf"

if [[ -f $FCONFIG ]]; then
  if ! grep -q 'Amiri' "$FCONFIG"; then
    sed -i "/<\/fontconfig>/i\\
  <match target=\"pattern\">\\
    <test name=\"lang\" compare=\"contains\">\\
      <string>ar</string>\\
    </test>\\
    <edit name=\"family\" mode=\"prefer\">\\
      <string>Amiri</string>\\
    </edit>\\
  </match>" "$FCONFIG"
  fi
else
  erch-refresh-config fontconfig/fonts.conf
fi

# Update Waybar CSS font-family to include Amiri fallback
WAYBAR_STYLE="$HOME/.config/waybar/style.css"
if [[ -f $WAYBAR_STYLE ]]; then
  if grep -q "font-family: 'JetBrainsMono Nerd Font'" "$WAYBAR_STYLE" && ! grep -q "Amiri" "$WAYBAR_STYLE"; then
    sed -i "s/font-family: 'JetBrainsMono Nerd Font';/font-family: 'JetBrainsMono Nerd Font', 'Amiri', 'Noto Sans', sans-serif;/g" "$WAYBAR_STYLE"
  fi
fi

fc-cache
erch-restart-waybar

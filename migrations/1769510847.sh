echo "Switch back to mainline chromium now that it supports full live theming"

if erch-pkg-present erch-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    erch-pkg-drop erch-chromium
    erch-pkg-add chromium
    erch-theme-set-browser
  fi
fi

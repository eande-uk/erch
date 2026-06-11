echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  erch-pkg-drop lmstudio
  erch-pkg-add lmstudio-bin
fi

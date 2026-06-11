echo "Fix JetBrains font setting"

if [[ $(erch-font-current) == JetBrains* ]]; then
  erch-font-set "JetBrainsMono Nerd Font"
fi

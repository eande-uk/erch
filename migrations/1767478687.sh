echo "Add opencode with system theming"

erch-pkg-add opencode

# Add config using erch theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $ERCH_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi

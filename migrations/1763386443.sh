echo "Uniquely identify terminal apps with custom app-ids using erch-launch-tui"

# Replace terminal -e calls with erch-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/erch-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use erch-launch-or-focus with erch-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|erch-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.omarchy\.Wiremix -e wiremix|erch-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc

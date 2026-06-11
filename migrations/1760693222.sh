echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/erch-cmd-tzupdate/erch-launch-floating-terminal-with-presentation erch-tz-select/g' ~/.config/waybar/config.jsonc

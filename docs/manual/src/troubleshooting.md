# Troubleshooting

## erch Commands

**My `erch` command is slow or unresponsive.**

```bash
# Check for broken symlinks in the bin directory
erch-debug --no-sudo --print

# Rebuild the command cache
erch commands > /dev/null
```

**A command says "not found".**

Check that the binary exists and is executable:

```bash
which erch-<command>
ls -la $(which erch-<command>)
```

If missing, reinstall erch or copy it from the repo.

## Theme

**Theme switch didn't update all apps.**

Run the theme refresh:

```bash
erch theme refresh
```

**Custom theme colors don't show up.**

Make sure your `colors.toml` has all required keys (accent, foreground, background, color0–color15). See `~/.local/share/erch/themes/tokyo-night/colors.toml` for reference.

## Display

**Screen is blank or garbled after config change.**

Press `Ctrl+Alt+F2` to switch to a TTY, log in, and restore a backup:

```bash
mv ~/.config/hypr/hyprland.conf.bak.* ~/.config/hypr/hyprland.conf
```

**External monitor not detected.**

```bash
hyprctl monitors
# If detected but not enabled, check ~/.config/hypr/monitors.conf
```

## Network

**Wi-Fi not working.**

```bash
# Check network devices
nmcli device status

# Connect to a network
nmcli device wifi connect "SSID" password "password"
```

## Sound

**No audio output.**

```bash
# Check audio devices
pavucontrol

# Restart PipeWire
systemctl --user restart pipewire wireplumber
```

## Clipboard

**Clipboard history not working.**

```bash
# Check if cliphist is running
pgrep -a cliphist

# Restart clipboard daemon
erch restart cliphist
```

## Getting Help

If the above doesn't solve your issue:

1. Run `erch-debug --no-sudo --print` to collect system info
2. Check the [GitHub issues](https://github.com/eande-os/erch/issues) for known problems
3. Open a new issue with the debug output and a description of the problem

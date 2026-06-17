# CLI Reference

The `erch` command is the central dispatch for everything. It auto-discovers all `erch-*` binaries and organizes them into groups.

## Getting Help

```bash
# List all commands with descriptions
erch commands

# Show full JSON metadata (binary, route, aliases, args, summary)
erch commands --json

# Show help for a group
erch theme --help
erch pkg --help
erch wiki --help

# Show help for a command (does not execute it)
erch theme set --help
```

## Command Groups

| Group | Purpose | Example |
|-------|---------|---------|
| `erch theme` | Theme management | `erch theme set nord` |
| `erch pkg` | Package management | `erch pkg add firefox` |
| `erch wiki` | Wiki and notes | `erch wiki init ./docs` |
| `erch capture` | Screenshots and recording | `erch capture screenshot region` |
| `erch refresh` | Reset configs to defaults | `erch refresh waybar` |
| `erch restart` | Restart components | `erch restart waybar` |
| `erch toggle` | Toggle features | `erch toggle nightlight` |
| `erch install` | Install optional software | `erch install docker` |
| `erch update` | System updates | `erch update` |
| `erch launch` | Launch applications | `erch launch browser` |
| `erch hw` | Hardware detection | `erch hw asus rog` |
| `erch system` | Power management | `erch system reboot` |

## Command Anatomy

Every `erch-*` binary has metadata in its header comments:

```bash
#!/bin/bash
# erch:summary=Take a screenshot
# erch:group=capture
# erch:args=[smart|region|windows|fullscreen] [slurp|copy]
# erch:examples=erch screenshot | erch capture screenshot region
```

This metadata drives the `--help` output and `erch commands --json`.

## Paths

erch binaries are installed to `/usr/local/bin/erch-*` (or `~/.local/bin/erch-*` on Arch+Hyprland targets). The `erch` CLI dispatcher scans these paths at runtime.

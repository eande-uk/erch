# config/hypr/ — Hyprland Compositor

Hyprland window manager configuration: core compositor settings, keybindings, monitor layout, input rules, window rules, and theme-aware templates.

## Contents

| File | Purpose |
|------|---------|
| `hyprland.conf` | Main entry point — sources all sub-configs |
| `env` | Environment variables (XDG, toolkit backends) |
| `input.conf` | Keyboard, mouse, touchpad settings |
| `monitors.conf` | Monitor layout and resolution |
| `keybinds.conf` | Global keybindings |
| `windowrules.conf` | Per-app window rules |
| `theme.conf` | Theme colors, borders, decorations |
| `idle.conf` | Idle management (hypridle) |
| `lock.conf` | Screen lock (hyprlock) |
| `autostart.conf` | Apps launched on login |

## Refresh

```bash
erch refresh hypr/hyprland.conf   # re-copy default config
erch refresh hypr/keybinds.conf   # refresh just keybindings
```

## Cross-references

- [L1 Defaults](../../default/hypr/) — upstream Hyprland configs
- [Theme templates](../../default/themed/) — `{{ variable }}` placeholders
- [User manual](../../docs/manual/src/configuration.md) — configuration guide

# themes/ — Color Themes

19 built-in color themes that cover every visual component of the desktop.

## Each theme contains

| File | Purpose |
|------|---------|
| `colors.toml` | Color definitions (accent, foreground, background, color0–15) |
| `preview.png` | Desktop preview |
| `unlock.png` | Lockscreen branding |
| `backgrounds/` | Wallpaper images (multiple resolutions) |
| `vscode.json` | VS Code / Cursor / Codium color theme |
| `neovim.lua` | Neovim colorscheme config |
| `icons.theme` | Icon theme override |
| `btop.theme` | btop system monitor theme |

Some themes also include:
- `light.mode` — enables light variant
- `hyprland.conf` — border/accent colors
- `waybar.css` — status bar styling
- `swayosd.css` — OSD styling
- `keyboard.rgb` — keyboard backlight
- `chromium.theme` — browser theme color

## Usage

```bash
erch theme set nord
```

This applies the theme across all components atomically: terminal colors, bar style, notifications, editor, browser, keyboard RGB, boot splash, and login screen.

## Custom Themes

Add yours in `~/.config/erch/themes/<name>/colors.toml`:

```toml
accent = "#7aa2f7"
foreground = "#a9b1d6"
background = "#1a1b26"
```

See `docs/ARCHITECTURE.md#theme-system` for the design. See `docs/manual/src/themes.md` for the user guide.

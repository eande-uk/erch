# Themes

erch ships 19 color themes that apply across every component of the desktop — terminal, bar, notifications, editor, browser, boot splash, and more.

## Switching Themes

```bash
# List all themes
erch theme list

# Switch to a theme
erch theme set tokyo-night

# See the current theme
erch theme current

# Re-apply the current theme (after manual edits)
erch theme refresh
```

## Built-in Themes

| Theme | Light Variant |
|-------|---------------|
| Catppuccin | Catppuccin Latte |
| Ethereal | — |
| Everforest | — |
| Flexoki | Flexoki Light |
| Gruvbox | — |
| Hackerman | — |
| Kanagawa | — |
| Lumon | — |
| Matte Black | — |
| Miasma | — |
| Nord | — |
| Osaka Jade | — |
| Retro 82 | — |
| Ristretto | — |
| Rose Pine | Rose Pine (light) |
| Tokyo Night | — |
| Vantablack | — |
| White | (light) |

## What Changes

When you switch a theme, erch updates:

- **Terminal colors** — Alacritty, Kitty, Foot, Ghostty
- **Waybar** — status bar colors and styling
- **Mako** — notification colors
- **SwayOSD** — on-screen display colors
- **Walker** — launcher colors
- **Hyprland** — window borders, gaps, active window indicator
- **Hyprlock** — lockscreen colors
- **btop** — system monitor colors
- **Helix** — editor colors
- **VS Code / Cursor / Codium** — editor color theme
- **Chromium / Brave / Edge** — browser theme color
- **Neovim** — color scheme
- **Keyboard RGB** — ASUS ROG and Framework 16 backlight
- **Plymouth** — boot splash colors
- **SDDM** — login screen background
- **Pandoc CSS** — HTML output from `erch wiki html`
- **mdbook CSS** — notes and manual output

## Custom Themes

You can create your own themes or install community themes:

```bash
# Install a theme from git
erch theme install https://github.com/user/theme-name

# Create a custom theme directory
mkdir -p ~/.config/erch/themes/my-theme
# Create colors.toml and required files, then:
erch theme set my-theme
```

Each theme directory needs a `colors.toml` file with these keys:

```toml
accent = "#7aa2f7"
cursor = "#c0caf5"
foreground = "#a9b1d6"
background = "#1a1b26"
selection_foreground = "#c0caf5"
selection_background = "#7aa2f7"
color0  = "#32344a"
# ... color1 through color15
```

See `~/.local/share/erch/themes/tokyo-night/colors.toml` for a complete example.

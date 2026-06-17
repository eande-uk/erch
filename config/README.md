# config/ — Default Application Configs

Default configuration files for every application erch ships. On install, these are copied to `~/.config/` (L2 in the layer model).

## Contents

| Directory | App | Refresh |
|-----------|-----|---------|
| `hypr/` | Hyprland (WM, bindings, monitors, input, idle, lock) | `erch refresh hypr/<file>` |
| `waybar/` | Status bar | `erch refresh waybar` |
| `alacritty/` | Terminal | Theme-aware via `.tpl` |
| `kitty/` | Terminal | Theme-aware via `.tpl` |
| `foot/` | Terminal | Theme-aware via `.tpl` |
| `ghostty/` | Terminal | Theme-aware via `.tpl` |
| `walker/` | App launcher | Theme-aware via `.tpl` |
| `mako/` | Notifications | Theme-aware via `.tpl` |
| `swayosd/` | On-screen display | Theme-aware via `.tpl` |
| `nvim/` | Neovim editor | — |
| `tmux/` | Terminal multiplexer | — |
| `git/` | Git config | — |
| `btop/` | System monitor | Theme-aware via `.tpl` |
| `helix/` | Helix editor | Theme-aware via `.tpl` |
| `chromium/` | Browser policies | Theme-aware via `.tpl` |
| `notes/` | Wiki/notes defaults | `erch wiki notes init` |

## How Configs Are Applied

Some configs are static (copied once). Others contain `{{ variable }}` placeholders and are rendered by the theme system on every theme switch. See `default/themed/` for the template set.

See `docs/ARCHITECTURE.md#layer-2-configs` for the full design. See `docs/manual/src/configuration.md` for the user guide.

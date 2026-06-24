# config/ — Default Application Configs

Default configuration files for every application erch ships. On install, these are copied to `~/.config/` (L2 in the layer model).

## Contents

| Directory / File | App | Refresh |
|------------------|-----|---------|
| `alacritty/` | Terminal (Alacritty) | Theme-aware via `.tpl` |
| `autostart/` | Autostart desktop entries | — |
| `btop/` | System monitor (btop) | Theme-aware via `.tpl` |
| `chromium/` | Browser policies | `erch refresh chromium` |
| `chromium-flags.conf` | Chromium flags | — |
| `elephant/` | Elephant wallpaper manager | — |
| `environment.d/` | Systemd environment (input method) | — |
| `erch/` | erch user config (extensions, hooks, themes) | — |
| `erch.ttf` | erch icon font | — |
| `fastfetch/` | System info (fastfetch) | `erch refresh fastfetch` |
| `fcitx5/` | CJK input method (Fcitx5) | — |
| `fontconfig/` | Font rendering config | — |
| `foot/` | Terminal (Foot) | Theme-aware via `.tpl` |
| `ghostty/` | Terminal (Ghostty) | Theme-aware via `.tpl` |
| `git/` | Git config | — |
| `git-hooks/` | Git hooks | — |
| `hypr/` | Hyprland (WM, bindings, monitors, input, idle, lock) | `erch refresh hypr/<file>` |
| `hyprland-preview-share-picker/` | Hyprland share picker CSS | Theme-aware via `.tpl` |
| `imv/` | Image viewer (imv) | — |
| `kitty/` | Terminal (Kitty) | Theme-aware via `.tpl` |
| `lazygit/` | Git TUI (lazygit) | — |
| `notes/` | Wiki/notes defaults | `erch wiki notes init` |
| `obsidian/` | Obsidian vault config | Theme-aware via `.tpl` |
| `opencode/` | AI coding agent (opencode) | — |
| `starship.toml` | Shell prompt (Starship) | — |
| `swayosd/` | On-screen display (SwayOSD) | Theme-aware via `.tpl` / `erch refresh swayosd` |
| `systemd/` | Systemd user services | — |
| `tmux/` | Terminal multiplexer (tmux) | `erch refresh tmux` |
| `Typora/` | Markdown editor (Typora) | — |
| `uwsm/` | UWSM session config | — |
| `walker/` | App launcher (Walker) | Theme-aware via `.tpl` / `erch refresh walker` |
| `waybar/` | Status bar (Waybar) | Theme-aware via `.tpl` / `erch refresh waybar` |
| `wiremix/` | WireGuard VPN (WireMix) | — |
| `xdg-terminals.list` | XDG terminal defaults | — |
| `xournalpp/` | Annotation (Xournal++) | — |

## How Configs Are Applied

Some configs are static (copied once). Others contain `{{ variable }}` placeholders and are rendered by the theme system on every theme switch. See `default/themed/` for the template set.

See `docs/ARCHITECTURE.md#layer-2-configs` for the full design. See `docs/manual/src/configuration.md` for the user guide.

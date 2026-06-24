# applications/ — Bundled Desktop Entries

Custom `.desktop` files shipped with erch, plus hidden entries for system
applications that should not appear in the launcher by default.

| Entry | Purpose |
|-------|---------|
| `Alacritty.desktop` | Alacritty terminal launcher with erch env |
| `imv.desktop` | imv image viewer launcher |
| `mpv.desktop` | mpv video player launcher |
| `typora.desktop` | Typora markdown editor (if installed) |
| `hidden/` | `.desktop` files to hide from launcher menus |
| `icons/` | Custom application icons |

These are copied to `~/.local/share/applications/` and `~/.local/share/icons/`
during install.

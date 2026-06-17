# default/ — Read-Only Defaults

System-wide defaults shipped with erch. This directory is copied to `~/.local/share/erch/` on install and is **never meant to be edited directly** — changes are overwritten on update.

## Contents

| Subdirectory | Purpose |
|-------------|---------|
| `themed/` | Template files (`*.tpl`) with `{{ variable }}` placeholders rendered by the theme system |
| `branding/` | ASCII art, logos, icons, about screens |
| `bash/` | Shell init files (.bashrc, aliases, completions, env) |
| `waybar/` | Waybar widget scripts (salat, weather, etc.) |
| `sddm/` | SDDM login screen branding |
| `plymouth/` | Plymouth boot splash assets |
| `erch-skill/` | AI agent skill definition for erch |
| `project-docs/` | Reusable project documentation pattern and templates |

## How to Customize

- **Themed configs** — override templates in `~/.config/erch/themed/`
- **Static configs** — edit `~/.config/` directly, or reset via `erch refresh`
- **Branding** — customize via `~/.config/erch/current/theme/`

See `docs/ARCHITECTURE.md#layer-1-defaults` for the design. See `docs/manual/src/configuration.md` for the user guide.

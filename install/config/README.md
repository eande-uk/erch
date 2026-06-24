# config/ — System Configuration Scripts

Scripts that apply system-level configurations after packages are installed.
These configure hardware, services, user preferences, and erch-specific settings.

| Script | Purpose |
|--------|---------|
| `config.sh` | Copy default configs to `~/.config/` |
| `theme.sh` | Apply initial theme |
| `branding.sh` | Apply erch branding (logos, ASCII art) |
| `git.sh` | Configure git defaults |
| `gpg.sh` | Configure GPG/dirmngr |
| `timezones.sh` | Auto-detect and set timezone |
| `hardware/` | Hardware-specific configs (network, bluetooth, GPU, etc.) |

See `hardware/` for vendor-specific scripts (intel/, asus/, framework/, apple/, lenovo/).

Sourced by `install.sh` as the fourth stage.

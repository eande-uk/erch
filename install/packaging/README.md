# packaging/ — Package Installation Scripts

Scripts that install packages and software components in the correct order.

| Script | Purpose |
|--------|---------|
| `base.sh` | Install base system packages from profile `.pkgs` files |
| `fonts.sh` | Copy erch icon font and install font packages |
| `nvim.sh` | Run erch-nvim-setup (LazyVim bootstrap) |
| `icons.sh` | Copy bundled application icons |
| `webapps.sh` | Install web app wrappers |
| `tuis.sh` | Install TUI launcher wrappers |
| `npx.sh` | Install NPX wrappers (opencode for work/school) |
| `pip.sh` | Install Python packages via mise + uv (weasyprint) |
| `asus-rog.sh` | ASUS ROG hardware support (conditional) |
| `framework16.sh` | Framework 16 laptop support (conditional) |
| `dell-xps-touchpad-haptics.sh` | Dell XPS haptic touchpad (conditional) |
| `surface.sh` | Surface laptop support (conditional) |

Sourced by `install.sh` as the third stage.

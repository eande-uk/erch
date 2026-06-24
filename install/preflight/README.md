# preflight/ — Pre-Installation Checks

Scripts that run before any packages are installed. They validate the system
state, set environment variables, and prepare the system for installation.

| Script | Purpose |
|--------|---------|
| `guard.sh` | Root check, arch check, minimum requirements |
| `begin.sh` | Render install header, present EULA |
| `show-env.sh` | Display detected hardware and install plan |
| `profile.sh` | Interactive profile selection (work/school/game) |
| `pacman.sh` | Configure pacman and update keyring |
| `migrations.sh` | Run pending migrations on existing installs |
| `first-run-mode.sh` | Create first-run marker for post-reboot setup |
| `disable-mkinitcpio.sh` | Disable mkinitcpio when using dracut |

Sourced by `install.sh` as the second stage.

# login/ — Login Manager & Boot Configuration

Scripts that configure the display manager, boot splash, and system-level
login components.

| Script | Purpose |
|--------|---------|
| `plymouth.sh` | Install and configure Plymouth boot splash |
| `sddm.sh` | Configure SDDM display manager with autologin |
| `default-keyring.sh` | Setup default GNOME keyring |
| `hibernation.sh` | Configure hibernation (swap file or partition) |
| `limine-snapper.sh` | Configure Limine bootloader with snapper snapshots |

Sourced by `install.sh` as the fifth stage.

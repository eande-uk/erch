# post-install/ — Post-Installation Wrap-Up

Final cleanup and confirmation scripts after all installation stages complete.

| Script | Purpose |
|--------|---------|
| `pacman.sh` | Final pacman cache cleanup and sync |
| `allow-reboot.sh` | Prompt user and allow reboot |
| `finished.sh` | Display completion message and next steps |

Sourced by `install.sh` as the sixth and final stage.

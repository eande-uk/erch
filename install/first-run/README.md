# first-run/ — Post-Reboot First-Run Setup

Scripts that run on the first login after a fresh install. Executed by
`erch-first-run` which is triggered by the `~/.local/state/erch/first-run.mode`
marker created during install.

| Script | Purpose |
|--------|---------|
| `all.sh` | Orchestrator — sourced by `erch-first-run` |
| `battery-monitor.sh` | Enable battery monitoring service |
| `cleanup-reboot-sudoers.sh` | Remove temporary sudo permissions |
| `dns-resolver.sh` | Configure systemd-resolved DNS |
| `elephant.sh` | Initialize Elephant wallpaper manager |
| `firewall.sh` | Configure UFW firewall rules |
| `gnome-theme.sh` | Apply GTK theme |
| `gtk-primary-paste.sh` | Configure middle-click paste |
| `recover-internal-monitor.sh` | Fix internal monitor if missing |
| `swayosd.sh` | Configure and start SwayOSD |
| `welcome.sh` | Display welcome message |
| `wifi.sh` | Prompt for WiFi configuration |
| `install-voxtype.hook` | Install Voxtype dictation engine (via hook) |

Not sourced by `install.sh` — runs as a systemd user service or via
`erch-first-run` on first graphical login.

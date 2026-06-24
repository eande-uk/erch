# helpers/ — Install Pipeline Utilities

Shared shell libraries sourced by the install pipeline. These provide
foundational functions used across all install stages.

| Script | Purpose |
|--------|---------|
| `logging.sh` | Log output to `/var/log/erch-install.log` via `run_logged` |
| `errors.sh` | Error handling and exit codes |
| `presentation.sh` | ANSI formatting, spinners, progress display |
| `chroot.sh` | Chroot helpers for ISO/offline install |

Sourced by `install.sh` before any other stage.

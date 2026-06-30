# config/uwsm/ — UWSM Session Manager

UWSM (Universal Wayland Session Manager) configuration: environment variables, default terminal/editor, and session lifecycle.

## Contents

| File | Purpose |
|------|---------|
| `env` | PATH, ERCH_PATH, mise activation — sourced by every Wayland session |
| `default` | Default terminal and editor exports |

## How it works

UWSM sources `env` before launching Hyprland. This is how `ERCH_PATH` and `erch-*` binaries become available in the user session. The `first-run` flag is also set here during install.

## Cross-references

- [Install pipeline](../../install/config/) — env file is copied during install
- [Architecture](../../docs/ARCHITECTURE.md#layer-2-configs) — L2 layer model

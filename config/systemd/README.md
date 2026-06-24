# config/systemd/ — Systemd User Services

Systemd user-level services: audio (pipewire), notification daemon, clipboard manager, and other background services.

## Contents

| Directory | Purpose |
|-----------|---------|
| `default.target.wants/` | Services auto-started on login |
| Individual `.service` files | Per-service unit definitions |

## Usage

Services are enabled during install. To manage manually:

```bash
systemctl --user status <service>
systemctl --user restart <service>
```

## Cross-references

- [Install pipeline](../../install/config/) — services enabled during install

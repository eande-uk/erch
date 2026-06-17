# hooks/ — Lifecycle Hooks

System hooks that erch runs at specific lifecycle events. These are the default hooks shipped with erch; user hooks go in `~/.config/erch/hooks/`.

## Available Hooks

| Hook File | When It Runs |
|-----------|-------------|
| (empty — add your own) | |

## User Hooks

Create any of these in `~/.config/erch/hooks/`:

| Hook | Runs Before | Runs After |
|------|-------------|------------|
| `theme-pre.sh` / `theme-post.sh` | Theme switch | Theme applied |
| `update-pre.sh` / `update-post.sh` | System update | System updated |

Hooks are sourced as shell scripts. Use them to:
- Start/stop services
- Notify other apps of changes
- Run custom backup or sync tasks

```bash
# Example: ~/.config/erch/hooks/theme-post.sh
pkill -USR1 waybar   # Signal Waybar to reload
notify-send "Theme applied: $(erch theme current)"
```

See `docs/manual/src/configuration.md#hooks` for the user guide.

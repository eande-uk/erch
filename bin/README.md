# bin/ — CLI Commands

All `erch-*` scripts live here. The `erch` dispatcher auto-discovers every binary at runtime, parses its metadata header, and makes it available as `erch <group> <action>`.

## Structure

- **`erch`** — the central dispatcher (CLI entry point)
- **`erch-<group>-<action>`** — individual commands

## How to Use

```bash
# List all documented commands
erch commands

# Run a command
erch theme set nord

# See a command's source
cat $(which erch-theme-set)
```

## Conventions

Every binary has a metadata header:

```bash
# erch:summary=One-line description
# erch:group=<group-name>
# erch:args=<arguments>
# erch:examples=erch cmd args
```

See `docs/ARCHITECTURE.md#layer-4-polish` for the design rationale. See `docs/manual/src/cli.md` for the user guide.

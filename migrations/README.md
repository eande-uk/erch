# migrations/ — One-Shot Upgrade Scripts

Migrations upgrade existing erch installs when the repo structure or configs change. They run once per migration ID and are skipped on subsequent runs.

## Rules

- **No shebang** — migrations are sourced, not executed directly
- **Permissions: 0644** (`-rw-r--r--`)
- **Name by commit timestamp** — `<unix-timestamp>.sh`
- **Start with `echo`** — describe what the migration does
- **Use `$ERCH_PATH`** — never hardcode erch's install path
- **Prefer helper commands** — `erch-cmd-missing`, `erch-pkg-present`, etc.

## Create a New Migration

```bash
erch dev add-migration --no-edit
```

This creates a file named after the latest commit's Unix timestamp.

## Run Migrations

```bash
erch migrate
```

This runs all pending migrations in timestamp order.

See `docs/ARCHITECTURE.md#layer-4-polish` for the design.

# Style

- Two spaces for indentation, no tabs
- Use bash 5 conditionals: use `[[ ]]` for string/file tests and `(( ))` for numeric tests
- In `[[ ]]`, don't quote variables, but do quote string literals when comparing values (e.g., `[[ $branch == "dev" ]]`)
- Prefer `(( ))` over numeric operators inside `[[ ]]` (e.g., `(( count < 50 ))`, not `[[ $count -lt 50 ]]`)
- For strings/paths with spaces, quote them instead of escaping spaces with `\ ` (e.g., `"$APP_DIR/Disk Usage.desktop"`, not `$APP_DIR/Disk\ Usage.desktop`)
- Shebangs must use `#!/bin/bash` consistently (never `#!/usr/bin/env bash`)
- Scripts under `install/` and `migrations/` may be sourced and intentionally omit shebangs

# Command Naming

All commands start with `erch-`. Prefixes indicate purpose.

The authoritative command group list lives in `bin/erch` in `GROUP_DESCRIPTIONS`. Keep `GROUP_DESCRIPTIONS` updated when adding a new command prefix.

Common prefixes include:

- `cmd-` - check if commands exist, misc utility commands
- `capture-` - screenshots, screen recordings, and other capture tools
- `pkg-` - package management helpers
- `hw-` - hardware detection (return exit codes for use in conditionals)
- `refresh-` - copy default config to user's `~/.config/`
- `restart-` - restart a component
- `launch-` - open applications
- `install-` - install optional software
- `setup-` - interactive setup wizards
- `toggle-` - toggle features on/off
- `theme-` - theme management
- `update-` - update components

Other current prefixes include:

- `ac-`, `audio-`, `battery-`, `branch-`, `brightness-`, `channel-`, `config-`, `debug-`, `dev-`, `drive-`, `first-`, `font-`, `haptic-`, `hibernation-`, `hook-`, `hyprland-`, `menu-`, `migrate-`, `notification-`, `npx-`, `plymouth-`, `powerprofiles-`, `reinstall-`, `remove-`, `screensaver-`, `show-`, `snapshot-`, `state-`, `sudo-`, `swayosd-`, `system-`, `transcode-`, `tui-`, `tz-`, `upload-`, `version-`, `voxtype-`, `webapp-`, `wifi-`, `wiki-`, `windows-`

# Command Metadata

Commands in `bin/` can declare CLI metadata in comments near the top of the file. `bin/erch` scans the first 80 lines, and tests expect command metadata to remain valid.

Supported metadata keys:

- `# erch:summary=...` - short help text
- `# erch:group=...` - command group when it differs from the filename-derived prefix
- `# erch:name=...` - command name within the group
- `# erch:args=...` - usage arguments
- `# erch:examples=...` - examples separated with ` | `
- `# erch:alias=...` / `# erch:aliases=...` - alternate routes
- `# erch:hidden=true` - hide from default command listings
- `# erch:requires-sudo=true` - mark commands that require sudo

Prefer explicit metadata for user-facing commands. Keep routes consistent with the filename unless there is a deliberate alias or compatibility route.

Example:

```bash
# erch:summary=Take a screenshot
# erch:group=capture
# erch:args=[smart|region|windows|fullscreen] [slurp|copy]
# erch:examples=erch screenshot | erch capture screenshot region
# erch:aliases=erch screenshot
```

# Install Scripts

Install entry points (`install.sh`, `boot.sh`) use `#!/bin/bash`. Many scripts under `install/` are sourced via `run_logged` and intentionally do not have shebangs.

Install stage files follow this pattern:

- `install/*/all.sh` lists scripts in execution order
- leaf scripts are sourced by `run_logged $ERCH_INSTALL/path/to/script.sh`
- avoid `exit` in sourced install scripts unless intentionally aborting the install
- use `$ERCH_INSTALL` and `$ERCH_PATH` instead of hard-coded erch paths
- keep hardware-specific logic under `install/config/hardware/`
- prefer helper commands for package and command checks where available

Raw `command -v`, `pacman`, and `pacman-key` are acceptable in bootstrap/preflight/package-helper contexts where the helper commands may not be available yet or where direct package-manager behavior is the point of the script.

# Helper Commands

Use these instead of raw shell commands:

- `erch-cmd-missing` / `erch-cmd-present` - check for commands
- `erch-pkg-missing` / `erch-pkg-present` - check for packages
- `erch-pkg-add` - install packages (handles both pacman and AUR)
- `erch-hw-asus-rog` - detect ASUS ROG hardware (and similar `hw-*` commands)

Exceptions are allowed for bootstrap, preflight, migration, and package-helper scripts where the helper may not be available yet, where the helper itself is being implemented, or where direct package-manager behavior is required.

# Config Structure

- `config/` - default configs copied to `~/.config/`
- `default/themed/*.tpl` - templates with `{{ variable }}` placeholders for theme colors
- `themes/*/colors.toml` - theme color definitions (accent, background, foreground, color0-15)

# Visual Changes

When making visual changes, such as Waybar styles or desktop appearance, always take and analyze a screenshot after applying the change to verify the result. Use `erch capture screenshot fullscreen save` for fullscreen screenshots.

For interactive UI work, use `wtype` to simulate keyboard input when available. Example: start the UI in the background, wait briefly for focus, then run `wtype -k Right -k Return` to exercise keyboard selection and confirm the resulting command output or state change. Prefer this over manual-only verification when a UI returns a selected value or changes a symlink/config.

When testing layer-shell UI, capture the reference and candidate states as separate screenshots, then compare them visually before further edits. If a launched UI would otherwise remain open, keep track of its PID and stop it after the screenshot; avoid broad process kills unless checking with `ps` first.

# Refresh Pattern

To copy a default config to user config with automatic backup:

```bash
erch-refresh-config hypr/hyprlock.conf
```

This copies `~/.local/share/erch/config/hypr/hyprlock.conf` to `~/.config/hypr/hyprlock.conf`.

# Documentation

Every directory must have a `README.md` explaining its purpose. The `docs/` directory contains all developer and user documentation.

## Required Reference Documents

These files define the product direction and architecture. Read them before planning significant changes:

| Document | Path | Purpose |
|----------|------|---------|
| Architecture | `docs/ARCHITECTURE.md` | Layer model, install flow, component ownership, key decisions |
| Product Vision | `docs/VISION.md` | What erch is, guiding principles, long-term direction |
| Roadmap | `docs/ROADMAP.md` | Phased plan with completed and upcoming milestones |
| Feature Inventory | `docs/FEATURES.md` | Complete feature list by layer with status |
| User Manual | `docs/manual/` | User-facing guide (mdbook, hosted on erch.eande.uk/manual) |

## Per-Directory READMEs

When creating a new directory, add a README.md that covers:

- **What** lives here
- **Why** it exists (the problem it solves)
- **How** to use it (brief — cross-ref to deeper docs)
- **Cross-references** to relevant sections in `docs/`

Follow the pattern in `~/.config/agent/config/workflows/project-documentation.md`.

# Migrations

To create a new migration, run `erch-dev-add-migration --no-edit`. This creates a migration file named after the unix timestamp of the last commit.

New migration format:
- File permissions must be `0644` (`-rw-r--r--`); migrations are sourced, not executed directly
- No shebang line
- Start with an `echo` describing what the migration does
- Use `$ERCH_PATH` to reference the erch directory
- Prefer helper commands such as `erch-cmd-present`, `erch-cmd-missing`, `erch-pkg-present`, and `erch-pkg-missing`

Some older migrations predate these rules. Do not copy older migrations that start with shebangs, omit the leading `echo`, or hard-code `~/.local/share/erch`.

Migrations may use raw `pacman`, `command -v`, or direct config edits when needed for historical compatibility or one-off repair work.

Example:
```bash
echo "Disable fingerprint in hyprlock if fingerprint auth is not configured"

if erch-cmd-missing fprintd-list || ! fprintd-list "$USER" 2>/dev/null | grep -q "finger"; then
  sed -i 's/fingerprint:enabled = .*/fingerprint:enabled = false/' ~/.config/hypr/hyprlock.conf
fi
```

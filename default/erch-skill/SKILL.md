---
name: erch
description: >
  REQUIRED for end-user customization of Linux desktop, window manager, or system config.
  Use when editing ~/.config/hypr/, ~/.config/waybar/, ~/.config/walker/,
  ~/.config/alacritty/, ~/.config/foot/, ~/.config/kitty/, ~/.config/ghostty/, ~/.config/mako/,
  or ~/.config/erch/. Triggers: Hyprland, window rules, animations, keybindings,
  monitors, gaps, borders, blur, opacity, waybar, walker, terminal config, themes,
  wallpaper, night light, idle, lock screen, screenshots, reminders, layer rules,
  workspace settings, display config, and user-facing erch commands. Excludes erch
  source development in ~/.local/share/erch/ and `erch dev` workflows.
---

# erch Skill

Manage [erch](https://erch.eande.uk/) Linux systems - a beautiful, modern, opinionated Arch Linux distribution with Hyprland.

This skill is for end-user customization on installed systems.
It is not for contributing to erch source code.

## When This Skill MUST Be Used

**ALWAYS invoke this skill for end-user requests involving ANY of these:**

- Editing ANY file in `~/.config/hypr/` (window rules, animations, keybindings, monitors, etc.)
- Editing ANY file in `~/.config/waybar/`, `~/.config/walker/`, `~/.config/mako/`
- Editing terminal configs (alacritty, foot, kitty, ghostty)
- Editing ANY file in `~/.config/erch/`
- Window behavior, animations, opacity, blur, gaps, borders
- Layer rules, workspace settings, display/monitor configuration
- Themes, wallpapers, fonts, appearance changes
- User-facing `erch` commands (`erch theme ...`, `erch refresh ...`, `erch restart ...`, etc.)
- Screenshots, screen recording, reminders, night light, idle behavior, lock screen

**If you're about to edit a config file in ~/.config/ on this system, STOP and use this skill first.**

**Do NOT use this skill for erch development tasks** (editing files in `~/.local/share/erch/`, creating migrations, or running `erch dev ...` workflows).

## Critical Safety Rules

**For end-user customization tasks, NEVER modify anything in `~/.local/share/erch/`** - but READING is safe and encouraged.

This directory contains erch's source files managed by git. Any changes will be:
- Lost on next `erch update`
- Cause conflicts with upstream
- Break the system's update mechanism

```
~/.local/share/erch/     # READ-ONLY - NEVER EDIT (reading is OK)
├── bin/                    # Source scripts (symlinked to PATH)
├── config/                 # Default config templates
├── themes/                 # Stock themes
├── default/                # System defaults
├── migrations/             # Update migrations
└── install/                # Installation scripts
```

**Reading `~/.local/share/erch/` is SAFE and useful** - do it freely to:
- Understand how erch commands work: `erch theme set --help` or `cat $(which erch-theme-set)`
- See default configs before customizing: `cat ~/.local/share/erch/config/waybar/config.jsonc`
- Check stock theme files to copy for customization
- Reference default hyprland settings: `cat ~/.local/share/erch/default/hypr/*`

**Always use these safe locations instead:**
- `~/.config/` - User configuration (safe to edit)
- `~/.config/erch/themes/<custom-name>/` - Custom themes (must be real directories)
- `~/.config/erch/hooks/` - Custom automation hooks

If the request is to develop erch itself, this skill is out of scope. Follow repository development instructions instead of this skill.

## System Architecture

erch is built on:

| Component | Purpose | Config Location |
|-----------|---------|-----------------|
| **Arch Linux** | Base OS | `/etc/`, `~/.config/` |
| **Hyprland** | Wayland compositor/WM | `~/.config/hypr/` |
| **Waybar** | Status bar | `~/.config/waybar/` |
| **Walker** | App launcher | `~/.config/walker/` |
| **Alacritty/Foot/Kitty/Ghostty** | Terminals | `~/.config/<terminal>/` |
| **Mako** | Notifications | `~/.config/mako/` |
| **SwayOSD** | On-screen display | `~/.config/swayosd/` |

## Command Discovery

erch ships a single `erch` CLI that dispatches to all `erch-*` binaries via `erch <group> <action>`. Always prefer this form — it is self-documenting and stable. The underlying `erch-*` binaries still exist on `PATH` and remain safe to read for source.

```bash
# List every documented command and its summary
erch commands

# Show the commands inside a group
erch theme --help
erch refresh --help
erch restart --help

# Show help for a specific command (does not execute it)
erch theme set --help

# Machine-readable listing (binary, route, summary, args, aliases)
erch commands --json

# Read a command's source to understand it
cat $(which erch-theme-set)
```

### Command Groups

Run `erch --help` for the full list. The most common groups:

| Group | Purpose | Example |
|-------|---------|---------|
| `erch refresh` | Reset config to defaults (backs up first) | `erch refresh waybar` |
| `erch restart` | Restart a service/app | `erch restart waybar` |
| `erch toggle` | Toggle feature on/off | `erch toggle nightlight` |
| `erch theme` | Theme management | `erch theme set <name>` |
| `erch install` | Install optional software / packages | `erch install docker dbs` |
| `erch launch` | Launch apps | `erch launch browser` |
| `erch capture` | Screenshots and recordings | `erch capture screenshot` |
| `erch reminder` | Desktop notification reminders | `erch reminder 15 "Pickup Jack"` |
| `erch pkg` | Package management | `erch pkg install <pkg>` |
| `erch setup` | Initial setup tasks | `erch setup fingerprint` |
| `erch update` | System updates | `erch update` |
| `erch wiki` | Wiki and notes (mdbook, pandoc, serve) | `erch wiki init ./docs` |

## Configuration Locations

### Hyprland (Window Manager)

```
~/.config/hypr/
├── hyprland.conf      # Main config (sources others)
├── bindings.conf      # Keybindings
├── monitors.conf      # Display configuration
├── input.conf         # Keyboard/mouse settings
├── looknfeel.conf     # Appearance (gaps, borders, animations)
├── envs.conf          # Environment variables
├── autostart.conf     # Startup applications
├── hypridle.conf      # Idle behavior (screen off, lock, suspend)
├── hyprlock.conf      # Lock screen appearance
└── hyprsunset.conf    # Night light / blue light filter
```

**Key behaviors:**
- Hyprland auto-reloads on config save (no restart needed for most changes)
- Use `hyprctl reload` to force reload
- After ANY Hyprland config change, validate with `hyprctl reload` followed by `hyprctl configerrors`
- If `hyprctl configerrors` reports errors, address them and rerun validation until clean or until a real blocker is identified
- Use `erch refresh hyprland` to reset to defaults

### Waybar (Status Bar)

```
~/.config/waybar/
├── config.jsonc       # Bar layout and modules (JSONC format)
└── style.css          # Styling
```

**Waybar does NOT auto-reload.** You MUST run `erch restart waybar` after any config changes.

**Commands:** `erch restart waybar`, `erch refresh waybar`, `erch toggle waybar`

### Terminals

```
~/.config/alacritty/alacritty.toml
~/.config/foot/foot.ini
~/.config/kitty/kitty.conf
~/.config/ghostty/config
```

**Command:** `erch restart terminal`

### Other Configs

| App | Location |
|-----|----------|
| btop | `~/.config/btop/btop.conf` |
| fastfetch | `~/.config/fastfetch/config.jsonc` |
| lazygit | `~/.config/lazygit/config.yml` |
| starship | `~/.config/starship.toml` |
| git | `~/.config/git/config` |
| walker | `~/.config/walker/config.toml` |

## Safe Customization Patterns

### Pattern 1: Edit User Config Directly

For simple changes, edit files in `~/.config/`:

```bash
# 1. Read current config
cat ~/.config/hypr/bindings.conf

# 2. Backup before changes
cp ~/.config/hypr/bindings.conf ~/.config/hypr/bindings.conf.bak.$(date +%s)

# 3. Make changes with Edit tool

# 4. Apply changes
# - Hyprland: auto-reloads on save, but MUST validate with `hyprctl reload` and `hyprctl configerrors`
# - Waybar: MUST restart with `erch restart waybar`
# - Walker: MUST restart with `erch restart walker`
# - Terminals: MUST restart with `erch restart terminal`
```

### Pattern 2: Make a new theme

1. Create a directory under ~/.config/erch/themes.
2. See how an existing theme is done via ~/.local/share/erch/themes/catppuccin.
3. Download a matching background (or several) from the internet and put them in ~/.config/erch/themes/[name-of-new-theme]
4. When done with the theme, run `erch theme set "Name of new theme"`

### Pattern 3: Use Hooks for Automation

Create scripts in `~/.config/erch/hooks/` to run automatically on events:

```bash
# Available hooks (see samples in ~/.config/erch/hooks/):
~/.config/erch/hooks/
├── theme-set        # Runs after theme change (receives theme name as $1)
├── font-set         # Runs after font change
└── post-update      # Runs after `erch update`
```

Example hook (`~/.config/erch/hooks/theme-set`):
```bash
#!/bin/bash
THEME_NAME=$1
echo "Theme changed to: $THEME_NAME"
# Add custom actions here
```

### Pattern 4: Reset to Defaults -- ALWAYS SEEK USER CONFIRMATION BEFORE RUNNING

When customizations go wrong:

```bash
# Reset specific config (creates backup automatically)
erch refresh waybar
erch refresh hyprland

# The refresh command:
# 1. Backs up current config with timestamp
# 2. Copies default from ~/.local/share/erch/config/
# 3. Restarts the component
```

## Common Tasks

### Themes

```bash
erch theme list              # Show available themes
erch theme current           # Show current theme
erch theme set <name>        # Apply theme (use "Tokyo Night" not "tokyo-night")
erch theme bg next           # Cycle wallpaper
erch theme install <url>     # Install from git repo
```

### Keybindings

Edit `~/.config/hypr/bindings.conf`. Format:
```
bind = SUPER, Return, exec, xdg-terminal-exec
bind = SUPER, Q, killactive
bind = SUPER SHIFT, E, exit
```

View current bindings: `erch menu keybindings --print`

**IMPORTANT: When re-binding an existing key:**

1. First check existing bindings: `erch menu keybindings --print`
2. If the key is already bound, you MUST add an `unbind` directive BEFORE your new `bind`
3. Inform the user what the key was previously bound to

Example - rebinding SUPER+F (which is bound to fullscreen by default):
```
# Unbind existing SUPER+F (was: fullscreen)
unbind = SUPER, F
# New binding for file manager
bind = SUPER, F, exec, nautilus
```

Always tell the user: "Note: SUPER+F was previously bound to fullscreen. I've added an unbind directive to override it."

### Display/Monitors

Edit `~/.config/hypr/monitors.conf`. Format:
```
monitor = eDP-1, 1920x1080@60, 0x0, 1
monitor = HDMI-A-1, 2560x1440@144, 1920x0, 1
```

List monitors: `hyprctl monitors`

### Window Rules

**CRITICAL: Hyprland window rules syntax changes frequently between versions.**

Before writing ANY window rules, you MUST fetch the current documentation from the official Hyprland wiki:
- https://github.com/hyprwm/hyprland-wiki/blob/main/content/Configuring/Window-Rules.md

DO NOT rely on cached or memorized window rule syntax. The format has changed multiple times and using outdated syntax will cause errors or unexpected behavior.

Window rules go in `~/.config/hypr/hyprland.conf` or a sourced file. Always verify the current syntax from the wiki first.

### Fonts

```bash
erch font list               # Available fonts
erch font current            # Current font
erch font set <name>         # Change font
```

### System

```bash
erch update                  # Full system update
erch version                 # Show erch version
erch debug --no-sudo --print # Debug info (ALWAYS use these flags)
erch system lock             # Lock screen
erch system shutdown         # Shutdown
erch system reboot           # Reboot
```

**IMPORTANT:** Always run `erch debug` with `--no-sudo --print` flags to avoid interactive sudo prompts that will hang the terminal.

## Troubleshooting

```bash
# Get debug information (ALWAYS use these flags to avoid interactive prompts)
erch debug --no-sudo --print

# Upload logs for support
erch upload log

# Reset specific config to defaults
erch refresh <app>

# Refresh specific config file
# config-file path is relative to ~/.config/
# eg. `erch refresh config hypr/hyprlock.conf` will refresh ~/.config/hypr/hyprlock.conf
erch refresh config <config-file>

# Full reinstall of configs (nuclear option)
erch reinstall
```

## Decision Framework

When user requests system changes:

1. **Is it a stock erch command?** Use it directly
2. **Is it a config edit?** Edit in `~/.config/`, never `~/.local/share/erch/`
3. **Is it a theme customization?** Create a NEW custom theme directory
4. **Is it automation?** Use hooks in `~/.config/erch/hooks/`
5. **Is it a package install?** Use `erch pkg add <pkgs...>` (or `erch pkg aur add <pkgs...>` for AUR-only packages)
6. **Unsure if command exists?** Run `erch commands` (or `erch <group> --help` for one group)

### Reminder Requests

When the user asks to set a reminder, use `erch reminder <minutes> [message]` directly. Convert natural language durations to minutes and title-case short reminder labels when appropriate.

```bash
erch reminder 15 "Pickup Jack"
erch reminder 60 "Check laundry"
erch reminder show
erch reminder clear
```

## Documentation

Every E&E project follows a standard documentation pattern. When working with docs, follow these conventions.

### Project Docs Structure

```
<project>/
├── README.md              ← What, why, quick start, links to deeper docs
├── docs/
│   ├── README.md          ← Index of all documentation
│   ├── ARCHITECTURE.md    ← System design with Mermaid diagrams
│   ├── VISION.md          ← Product direction
│   ├── ROADMAP.md         ← Phased plan with milestone status
│   ├── FEATURES.md        ← Feature inventory by layer
│   └── manual/            ← User-facing guide (mdbook)
└── <component>/
    └── README.md          ← What lives here, why, how to use, cross-refs
```

### User Manual

The `docs/manual/` directory is an mdbook project. Chapters follow this structure:

| Section | Content |
|---------|---------|
| Welcome | What is this project, who is it for |
| Getting Started | Installation, first steps |
| Navigation | Keybindings, workflow |
| Themes | Visual customization |
| Hotkeys | Keyboard shortcut reference |
| CLI | Command reference |
| Applications | Included software |
| Configuration | File locations, customization |
| [Feature] | Project-specific chapter |
| Troubleshooting | Common issues |

### Per-Directory READMEs

Every directory has a README.md that briefly explains:

- **What** lives here
- **Why** it exists
- **How** to use it (with cross-references to `docs/`)

See `~/.config/agent/config/workflows/project-documentation.md` for the full standard.

## Out of Scope

This skill intentionally does not cover erch source development. Do not use this skill for:
- Editing files in `~/.local/share/erch/` (`bin/`, `config/`, `default/`, `themes/`, `migrations/`, etc.)
- Creating or editing migrations
- Running `erch dev ...` commands

## Example Requests

- "Change my theme to catppuccin" -> `erch theme set catppuccin`
- "Add a keybinding for Super+E to open file manager" -> Check existing bindings first, add `unbind` if needed, then add `bind` in `~/.config/hypr/bindings.conf`
- "Configure my external monitor" -> Edit `~/.config/hypr/monitors.conf`
- "Make the window gaps smaller" -> Edit `~/.config/hypr/looknfeel.conf`
- "Set up night light to turn on at sunset" -> `erch toggle nightlight` or edit `~/.config/hypr/hyprsunset.conf`
- "Set a reminder to pickup jack in 15 minutes" -> `erch reminder 15 "Pickup Jack"`
- "Show my reminders" -> `erch reminder show`
- "Clear all reminders" -> `erch reminder clear`
- "Customize the catppuccin theme colors" -> Create `~/.config/erch/themes/catppuccin-custom/` by copying from stock, then edit
- "Run a script every time I change themes" -> Create `~/.config/erch/hooks/theme-set`
- "Reset waybar to defaults" -> `erch refresh waybar`

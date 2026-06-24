# Architecture

## Layer Model

erch organizes everything into five layers — L0 through L4 — each building on the one below it.

```mermaid
graph TD
  L0["L0 — System<br/>install pipeline, profiles, packages"] --> L1
  L1["L1 — Defaults<br/>shell init, env, display server, input"] --> L2
  L2["L2 — Configs<br/>terminal, bar, launcher, editor, git, tmux"] --> L3
  L3["L3 — Theme<br/>19 color themes, branding, wallpapers"] --> L4
  L4["L4 — Polish<br/>294 CLI commands, migrations, hooks, toggles"]
```

| Layer | Directory | What it contains |
|-------|-----------|-----------------|
| L0 | `install/` | Base packages, profiles, hardware detection, packaging scripts |
| L1 | `default/` | Shell init, env vars, display server, input, fonts, icons |
| L2 | `config/` | App configs (terminal, bar, launcher, editor, git, tmux, etc.) |
| L3 | `themes/` + `default/themed/` | Color schemes, branding, wallpapers, app-specific theme files |
| L4 | `bin/` + `migrations/` + `hooks/` | CLI commands, one-shot migrations, lifecycle hooks |

## Install Flow

```mermaid
graph TD
  boot["boot.sh / install.sh"] --> hw[Hardware Detection]
  hw --> profile[Profile Selection<br/>common + work/school/game]
  profile --> base[Base Packages<br/>kernel, drivers, DM, networking, audio]
  base --> pkgs[Profile Packages<br/>work: pandoc, mdbook, docker, rust<br/>school: pandoc, mdbook, xournalpp<br/>game: steam, lutris, mangohud]
  pkgs --> pip["Python Packages<br/>weasyprint via mise + uv"]
  pip --> fonts[Fonts & Icons]
  fonts --> nvim[Neovim Setup]
  nvim --> defaults[L1 Defaults Copied]
  defaults --> configs[L2 Configs Installed]
  configs --> webapps[Web Apps & TUIs]
  webapps --> theme[L3 Theme Applied]
  theme --> npx[NPX Wrappers<br/>opencode for work/school]
  npx --> migrate["L4 Migrations Run<br/>(including ~/wiki/ bootstrap)"]
  migrate --> ready["✓ Ready"]
```

## Component Ownership

erch is the source of truth. The parent repo (`eande-os`) mirrors erch's configs for non-erch targets.

```mermaid
graph LR
  erch["erch/<br/>Source of Truth"] --> dotfiles["dotfiles/<br/>Stow-deployed mirror"]
  erch --> parent["eande-os/<br/>Parent repo"]
  parent --> dotfiles
  parent --> layerzero["layer-zero/<br/>Profile definitions"]
  parent --> tests["tests/<br/>Cross-target verification"]
  erch --> targets["Targets deploy<br/>erch configs natively"]
  dotfiles --> omarchy["Upstream Omarchy<br/>via dotfiles/ stow overlay"]
  dotfiles --> arch["Arch + Hyprland<br/>via dotfiles/ stow overlay"]
```

| Component | Source of Truth | Mirror | Targets |
|-----------|---------------|--------|---------|
| CLI commands | `erch/bin/` | `dotfiles/home/.local/bin/` (subset) | All targets via stow |
| Config files | `erch/config/` | `dotfiles/home/.config/` | All targets |
| Defaults | `erch/default/` | `dotfiles/home/.local/share/erch/` | erch only |
| Themes | `erch/themes/` | `dotfiles/home/.config/erch/themes/` | erch only (symlinked) |
| Install pipeline | `erch/install/` | Not mirrored | erch only |
| Profiles | `erch/install/packages/` | `layer-zero/` (shared) | All targets |

## Theme System

```mermaid
graph TD
  set["erch theme set <name>"] --> create["Create ~/.config/erch/current/next-theme/"]
  create --> copyt[Copy theme-specific files from themes/<name>/]
  copyt --> usert[Copy user overrides from ~/.config/erch/themes/<name>/]
  usert --> render["Render .tpl templates<br/>via erch-theme-set-templates<br/>(sed-based variable substitution)"]
  render --> swap["Atomic swap: next-theme → current/theme"]
  swap --> restart["Restart components<br/>waybar, swayosd, terminals, mako, helix, btop"]
  restart --> apps["Apply app themes<br/>browser, vscode, obsidian, keyboard RGB"]
  apps --> hook["Run hooks<br/>erch-hook theme-set"]
```

Template variables available: `{{ background }}`, `{{ foreground }}`, `{{ accent }}`, `{{ cursor }}`, `{{ color0 }}` through `{{ color15 }}`, plus `_strip` (no `#`) and `_rgb` (comma-separated decimal) variants.

## Profile System

```mermaid
graph TD
  common["common.pkgs<br/>80+ base packages<br/>WM, terminal, browser, editor,<br/>fonts, printing, networking"] --> work
  common --> school
  common --> game
  work["work.pkgs<br/>libreoffice, thunderbird,<br/>pandoc, mdbook, docker,<br/>rust, go, clang, opencode"]
  school["school.pkgs<br/>libreoffice, thunderbird,<br/>pandoc, mdbook, xournalpp,<br/>opencode"]
  game["game.pkgs<br/>steam, lutris, mangohud,<br/>gamemode, wine"]
```

## Wiki & Notes System

```mermaid
graph TD
  wiki["erch wiki"] --> init["init [dir]<br/>bootstrap mdbook skeleton"]
  wiki --> serve["serve [path]<br/>render & open in browser"]
  wiki --> html["html <file><br/>md → standalone HTML<br/>via pandoc + theme CSS"]
  wiki --> pdf["pdf <file><br/>md → standalone PDF<br/>via pandoc + weasyprint"]
  wiki --> build["build [dir]<br/>mdbook build"]
  wiki --> notes["notes sub-group"]
  notes --> ninit["notes init<br/>bootstrap ~/wiki/<br/>+ vimwiki config"]
  notes --> nserve["notes serve<br/>mdbook serve ~/wiki/"]
  notes --> nbuild["notes build<br/>mdbook build ~/wiki/"]
```

## Key Design Decisions

1. **erch owns everything.** The parent repo exists only to ship erch's configs to non-erch systems. erch does not depend on the parent repo.
2. **Profiles are additive.** common is always installed. The user picks exactly one of work/school/game at install time. All packages are available post-install regardless.
3. **No commercial deps in defaults.** Users opt in via standard package managers. This keeps erch free and open.
4. **Theme system uses sed, not a real template engine.** Simple, fast, no dependencies. Templates use `{{ variable }}` syntax with three value forms (raw, stripped, RGB).
5. **Configs are read-only in `default/`, writable in `~/.config/`.** The `erch refresh` command resets a config to default with automatic backup.
6. **Branch model isolates risk.** master is stable, rc is release candidate, dev tracks upstream Omarchy with erch-favoring merge strategy. All branches have CI.
7. **294 commands via a single CLI.** Every `erch-*` binary is auto-discovered by the `erch` dispatcher. Metadata in comments drives help text, JSON output, and group organization.

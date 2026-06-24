# Feature Inventory

## L0 — System

| Feature | Status | Notes |
|---------|--------|-------|
| Hardware detection | ✓ | ASUS ROG, Framework 16, Dell XPS, Surface |
| Profile-based install | ✓ | common, work, school, game (select at install) |
| Package profiles | ✓ | `install/packages/*.pkgs` with per-profile files |
| ISO builder | 🎯 | Pre-built ISOs per profile (planned) |
| Managed mode | 🎯 | Policy enforcement (planned) |
| Base packages | ✓ | kernel, drivers, firmware, DM, networking, audio, printing |
| Font installation | ✓ | `install/packaging/fonts.sh` |
| Icon installation | ✓ | `install/packaging/icons.sh` |
| NVIM installation | ✓ | `install/packaging/nvim.sh` |
| Webapp installation | ✓ | `install/packaging/webapps.sh` |
| TUI installation | ✓ | `install/packaging/tuis.sh` |
| NPX wrappers | ✓ | opencode for work/school, others installable post-install |
| Pip packages | ✓ | weasyprint via mise+uv |

## L1 — Defaults

| Feature | Status | Notes |
|---------|--------|-------|
| Shell init (.bashrc) | ✓ | `default/bash/` |
| Environment variables | ✓ | `config/environment.d/`, `config/erch/env` |
| Display server (Hyprland) | ✓ | `config/hypr/` core configs |
| Input (keyboard, touchpad) | ✓ | `config/hypr/input.conf` |
| Display management | ✓ | hypridle, hyprlock, hyprsunset |
| Night light | ✓ | hyprsunset toggle via `erch toggle nightlight` |
| SSH | ✓ | OpenSSH server (not managed by erch config) |

## L2 — Configs

| Feature | Status | Notes |
|---------|--------|-------|
| Terminal (Alacritty) | ✓ | Theme-aware via erch theme system |
| Terminal (Foot) | ✓ | Theme-aware via OSC escape codes |
| Terminal (Kitty) | ✓ | Theme-aware .tpl template |
| Terminal (Ghostty) | ✓ | Theme-aware .tpl template |
| Bar (Waybar) | ✓ | Theme-aware .tpl template |
| Launcher (Walker) | ✓ | Theme-aware .tpl template |
| Notifications (Mako) | ✓ | Theme-aware .tpl template |
| OSD (SwayOSD) | ✓ | Theme-aware .tpl template |
| Editor (Neovim) | ✓ | vimwiki, pre-configured |
| Git | ✓ | `config/git/` |
| Tmux | ✓ | `config/tmux/` |
| Starship prompt | ✓ | `config/starship.toml` |
| Fastfetch | ✓ | `config/fastfetch/` |
| btop | ✓ | Theme-aware .tpl template |
| Chromium | ✓ | `config/chromium/`, theme-aware .tpl |
| UWSM | ✓ | `config/uwsm/` |
| XDG defaults | ✓ | `config/xdg-terminals.list` |
| GPG | ✓ | `config/gpg-hooks/` (dirmngr.conf) |
| Fontconfig | ✓ | `config/fontconfig/` |
| Fcitx5 | ✓ | `config/fcitx5/` |
| Helix | ✓ | Theme-aware .tpl template |

## L3 — Theme

| Feature | Status | Notes |
|---------|--------|-------|
| Built-in themes | ✓ | 19 themes (catppuccin, nord, tokyo-night, everforest, gruvbox, kanagawa, et al.) |
| Theme switch | ✓ | `erch theme set <name>` — updates all components atomically |
| Theme refresh | ✓ | `erch theme refresh` — re-applies current theme |
| Theme-aware templates | ✓ | 19 .tpl files rendered with `{{ variable }}` from colors.toml |
| Wallpaper cycling | ✓ | `erch theme bg next` |
| VS Code themes | ✓ | Per-theme vscode.json |
| Neovim themes | ✓ | Per-theme neovim.lua |
| Plymouth branding | ✓ | Per-theme boot splash |
| SDDM branding | ✓ | erch logo on login screen |
| Chromium theme | ✓ | Per-theme accent color |
| Obsidian CSS | ✓ | Theme-aware .tpl for Obsidian vaults |
| Pandoc CSS | ✓ | Theme-aware .tpl for erch wiki html output |
| mdbook CSS | ✓ | Theme-aware .tpl with symlink to ~/wiki/ |
| Keyboard RGB | ✓ | ASUS ROG and Framework 16 |
| Light/dark mode | ✓ | 4 themes with light.mode variant |
| User themes | ✓ | Install from git, override in ~/.config/erch/themes/ |
| Branding | ✓ | ASCII art, logo.svg, logo.txt, icon.png |

## L4 — Polish

| Feature | Status | Notes |
|---------|--------|-------|
| CLI commands | ✓ | 294 `erch-*` scripts across 58 groups |
| Self-documenting metadata | ✓ | `# erch:summary=`, `erch commands --json` |
| Command groups | ✓ | 58 groups (theme, pkg, install, wiki, capture, etc.) |
| Migrations | ✓ | 330 scripts, run via `erch migrate`, one-shot upgrade |
| Hooks | ✓ | Pre/post hooks for install, theme, update events |
| Dynamic toggles | ✓ | `erch toggle <feature>` for nightlight, waybar, etc. |
| Refresh/restart | ✓ | `erch refresh <config>`, `erch restart <component>` |
| System snapshots | ✓ | `erch snapshot` |
| Power profiles | ✓ | `erch powerprofiles` for ASUS ROG |
| Wiki | ✓ | `erch wiki` — init, serve, html, pdf, build, notes |
| Screenshots | ✓ | `erch capture screenshot [region\|window\|fullscreen]` |
| Screen recording | ✓ | `erch capture recording` |
| Font management | ✓ | `erch font list/current` |
| Dev tools | ✓ | `erch dev benchmark/add-migration` |
| Debug | ✓ | `erch debug --no-sudo --print` |
| Salat times | ✓ | Prayer times + Waybar widget |
| Weather | ✓ | Weather status in Waybar |
| Reminders | ✓ | Desktop notifications via `erch reminder` |
| Voxtype dictation | ✓ | Speech-to-text |
| Windows VM | ✓ | `erch windows` helpers |
| Branding system | ✓ | `erch screensaver`, `erch branding` |
| VPN | ✓ | WireMix in config/ |
| Upload log | 🎯 | Local collection works, destination TBD (planned) |

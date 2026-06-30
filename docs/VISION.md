# Vision

## What erch Is

erch is a beautiful, modern, packaged-by-use-case Linux distribution by E&E. It is a self-contained fork of erch — arch Linux + Hyprland — that ships the complete desired desktop configuration natively, from bare metal to fully polished, without requiring any external repo.

## Guiding Principles

1. **Source of truth.** erch owns all system commands, configs, themes, and install pipeline. The parent repo (`eande-os`) stays target-agnostic, supporting erch, upstream erch, and bare Arch+Hyprland from a single dotfiles mirror.
2. **Profile-based, not one-size-fits-all.** Users select a profile at install time (common/work/school/game). Optional software is opt-in, not bundled. No commercial packages, webapps, or commercial NPX wrappers in defaults.
3. **Beautiful by default.** 19 color themes, cohesive branding across every component, dynamic theme system that updates all apps on switch.
4. **Notes as a core feature.** nvim + vimwiki + mdbook + pandoc for a complete writing and documentation pipeline. The `erch wiki` command handles init, serve, build, and conversion (HTML/PDF). Theme-aware CSS for all output.
5. **Everything managed via `erch`.** A single CLI dispatches to 294 commands across 58 groups. Self-documenting metadata, tab completion, machine-readable JSON output.

## What We're Building Toward

- **erch.eande.uk** — public website with manual, package browser, theme gallery, community resources
- **Managed mode** — opt-in policy enforcement for enterprise/school deployments (package allowlist/blocklist, config pinning, compliance reporting)
- **ISO builder** — pre-built ISOs per profile for offline installation without network bootstrap
- **Self-hosted services** — log upload, package cache, theme registry, all running on E&E infrastructure
- **Cross-distro L0** — expand the layer-zero package system to support non-Arch bases (Fedora, Debian, NixOS) with the same config output

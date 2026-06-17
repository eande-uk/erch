# Roadmap

## Phase 1: Fork & Foundation ✓

*Completed in the initial erch fork from Omarchy.*

- [x] Rebrand from Omarchy: ASCII art, logos, icons, boot scripts, plymouth, SDDM
- [x] Branch model: master (stable) / rc (release candidate) / dev (upstream tracking)
- [x] Profile-based package system: common/work/school/game with interactive installer prompt
- [x] Remove commercial packages from defaults (1password, obsidian, typora, spotify, signal, all webapps)
- [x] Replace notes stack: obsidian/typora → nvim + vimwiki + mdbook + pandoc
- [x] Create CI pipeline: shellcheck, metadata validation, migration format, package validation
- [x] Contributor docs: CONTRIBUTING.md, CODE_OF_CONDUCT.md, SECURITY.md, PR template, issue templates

## Phase 2: Wiki & Docs ✓

*Completed in the current work session.*

- [x] `erch wiki` command: init, serve, html, pdf, build, notes sub-group
- [x] Theme-aware CSS templates for pandoc and mdbook (erch.css.tpl, mdbook-variables.css.tpl)
- [x] Config directory: `config/notes/` with default book.toml, SUMMARY.md, vimwiki.lua, static CSS
- [x] Python dep management via mise + uv (weasyprint in pip.sh)
- [x] Migration to bootstrap `~/wiki/` with vimwiki config
- [x] Comprehensive test suite (49 tests): CLI metadata, init, templates, configs, packaging, integration
- [x] Documentation pattern: default/project-docs/ with templates for all E&E projects
- [x] Dev docs: docs/README.md, ARCHITECTURE.md (with Mermaid), VISION.md, ROADMAP.md, FEATURES.md
- [x] User manual: docs/manual/ (mdbook, 10 chapters)
- [x] Per-directory READMEs for every component directory
- [x] Update erch-md-to-html to thin shim delegating to `erch wiki html`

## Phase 3: Layer-by-Layer Polish 🔄

*Continue through the erch layer stack, documenting and ensuring consistency.*

- [ ] L1 Defaults — shell init, env, Hyprland core configs: compare erch vs Omarchy, propagate to dotfiles
- [ ] L2 Configs — terminal, bar, launcher, editor, git, tmux: audit against upstream defaults
- [ ] L3 Theme — verify all 19 themes have complete coverage across all apps
- [ ] L4 Polish — review all 290+ commands for metadata completeness, add missing summaries

## Phase 4: Infrastructure 🎯

*Public-facing services and community features.*

- [ ] erch.eande.uk website with hosted manual
- [ ] Managed mode with policy.toml
- [ ] ISO builder per profile
- [ ] Self-hosted log upload and package cache
- [ ] Theme gallery and community submissions

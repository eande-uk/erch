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

## Phase 3: Layer-by-Layer Polish ✓

*Layer stack audit completed — internal consistency, README coverage, and production hardening.*

- [x] L1 Defaults — internal audit: fixed orphan davinci-resolve.conf, created missing project-docs/
- [x] L2 Configs — internal audit: updated config/README.md table (34 entries), verified cross-references
- [x] L3 Theme — verified all 19 themes have required files; coverage matrix documented
- [x] L4 Polish — added 6 missing GROUP_DESCRIPTIONS; fixed 22 migration format violations; added CLI + salat tests to CI; created READMEs for 39 directories
- [x] Documentation — complete ledger (docs/LEDGER.md), full doc revamp with accurate counts

## Phase 4: Infrastructure 🎯

*Public-facing services and community features.*

- [ ] erch.eande.uk website with hosted manual
- [ ] Managed mode with policy.toml
- [ ] ISO builder per profile
- [ ] Self-hosted log upload and package cache
- [ ] Theme gallery and community submissions

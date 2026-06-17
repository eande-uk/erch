# Project Documentation Pattern

Every E&E project documents itself the same way. This file defines the standard.

## Why

- New contributors understand the project in minutes, not hours
- Users find answers without reading code
- CI can validate completeness
- Projects stay consistent across E&E

## The Pattern

```
<project>/
├── README.md                  ← What, why, quick start, links (see templates/README.md.tpl)
├── docs/
│   ├── README.md              ← Index of all documentation
│   ├── ARCHITECTURE.md        ← System design with Mermaid diagrams
│   ├── VISION.md              ← Long-term product direction
│   ├── ROADMAP.md             ← Phased plan with milestone status
│   ├── FEATURES.md            ← Complete feature inventory
│   └── manual/                ← User-facing manual (mdbook)
│       ├── book.toml
│       ├── SUMMARY.md
│       └── src/
│           ├── welcome.md
│           ├── getting-started.md
│           ├── [project-specific chapters]
│           └── troubleshooting.md
├── <component>/
│   └── README.md              ← What lives here, why, how to use, cross-refs to docs/
└── [all other directories]
    └── README.md              ← Every directory has one
```

## Rules

1. **`docs/` is mandatory.** Every project has one at the root.
2. **`docs/README.md` indexes everything.** One link per doc, one-line summary.
3. **`docs/ARCHITECTURE.md` uses Mermaid diagrams.** They render natively on GitHub and can be exported offline via `erch-mmd`.
4. **`docs/manual/` is an mdbook.** It builds to the project's public website. Content is user-focused (not developer-focused).
5. **Every directory has a README.md.** Brief (3-15 lines), explains purpose, references deeper docs where relevant.
6. **Documentation is checked in CI.** Validation ensures READMEs exist, manual compiles, cross-references are valid.
7. **Docs reflect actual repo state.** Update docs in the same PR as the code change. CI enforces this for referenced components.

## Templates

Templates for new projects live in `templates/`. Copy them to bootstrap a new project:

```bash
mkdir -p my-project/docs/manual/src
cp -r default/project-docs/templates/* my-project/docs/
# Then edit each file with project-specific content
```

## Manual Structure

The manual follows this structure (from Omarchy conventions):

| Section | Purpose |
|---------|---------|
| Welcome | What is this project, who is it for |
| Getting Started | Installation, first steps |
| Navigation | Keybindings, workflow |
| Themes | Visual customization |
| CLI | Command reference |
| Applications | Included software |
| Configuration | File locations, customization |
| [Project Feature] | Project-specific chapter |
| Contributing | How to help |
| Troubleshooting | Common issues |

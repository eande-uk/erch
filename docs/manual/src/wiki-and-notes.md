# Wiki & Notes

erch has a built-in wiki and notes system powered by vimwiki, mdbook, and pandoc.

## Quick Start

```bash
# Initialize your personal notes
erch wiki notes init

# Start the live preview server
erch wiki notes serve

# Open ~/wiki/ in Neovim and start writing
nvim ~/wiki/notes/index.md
```

The live server opens at `http://localhost:3000` and auto-reloads on file changes.

## How It Works

```
~/wiki/
├── book.toml             ← mdbook configuration
├── SUMMARY.md            ← Navigation structure
├── index.md              ← Landing page
├── notes/                ← vimwiki directory (edit here)
│   ├── index.md
│   └── *.md
├── assets/               ← Images, attachments
├── theme/
│   └── css/
│       └── variables.css ← Symlinked to erch theme (auto-updates)
└── book/                 ← Built site (gitignored)
```

## Editing Notes

Edit `.md` files in `~/wiki/notes/` with Neovim. vimwiki is pre-configured:

- `Enter` on a `[[wiki link]]` — open or create the linked page
- `Backspace` on a link — go back to the previous page
- `Tab` — cycle through links
- `:VimwikiToggleListItem` — toggle checkbox status
- On save, the HTML is pre-rendered so the mdbook preview is always up to date

## Converting Documents

```bash
# Single markdown file → standalone HTML
erch wiki html doc.md -o doc.html

# Single markdown file → PDF
erch wiki pdf doc.md -o doc.pdf

# Build the full notes site
erch wiki notes build
```

The HTML and PDF output use your current erch theme colors.

## Project Wikis

You can also use `erch wiki` for project-specific documentation:

```bash
# Initialize a wiki in a project directory
cd my-project
erch wiki init ./docs

# Serve the project wiki
erch wiki serve ./docs

# Build the project wiki
erch wiki build ./docs

# Serve a single README
erch wiki serve README.md
```

## Auto-Detect

When you run `erch wiki serve` with no arguments inside a project, it automatically finds:

1. `./wiki/index.md` or `./wiki/README.md`
2. `./docs/index.md` or `./docs/README.md`
3. `./README.md`
4. Falls back to `~/wiki/notes/`

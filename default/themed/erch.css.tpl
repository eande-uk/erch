/* erch Documentation CSS
   Theme-aware. Rendered by erch-theme-set-templates.
   Used via pandoc --css for standalone HTML output.
   Handles articles, quotes, NDAs, landing pages, and multi-section docs. */

:root {
  --bg: {{ background }};
  --fg: {{ foreground }};
  --accent: {{ accent }};
  --muted: {{ color8 }};
  --code-bg: {{ color0 }};
  --pre-bg: {{ color0 }};
  --border: {{ color8 }};
  --selection: {{ selection_background }};
  --heading: {{ foreground }};
  --link: {{ color4 }};
  --link-hover: {{ accent }};
  --success: {{ color2 }};
  --warning: {{ color3 }};
  --error: {{ color1 }};
  --info: {{ color6 }};
}

@media (prefers-color-scheme: light) {
  :root {
    --bg: {{ selection_background }};
    --fg: {{ background }};
    --muted: {{ color7 }};
    --code-bg: {{ selection_background }};
    --pre-bg: {{ selection_background }};
    --border: {{ color8 }};
    --heading: {{ background }};
  }
}

*, *::before, *::after {
  box-sizing: border-box;
}

html {
  font-size: 16px;
  scroll-behavior: smooth;
}

body {
  background: var(--bg);
  color: var(--fg);
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif;
  font-size: 1rem;
  line-height: 1.7;
  padding: 2rem;
  max-width: 860px;
  margin: 0 auto;
  min-height: 100vh;
}

/* ── Typography ─────────────────────────────────────── */

h1, h2, h3, h4, h5, h6 {
  color: var(--heading);
  font-weight: 600;
  line-height: 1.3;
  margin: 2em 0 0.5em;
}

h1 { font-size: 2.25rem; margin-top: 0.5em; }
h2 { font-size: 1.75rem; border-bottom: 1px solid var(--border); padding-bottom: 0.25em; }
h3 { font-size: 1.35rem; }
h4 { font-size: 1.1rem; }
h5 { font-size: 1rem; color: var(--muted); }
h6 { font-size: 0.9rem; color: var(--muted); }

p { margin: 0 0 1.2em; }

/* ── Links ──────────────────────────────────────────── */

a {
  color: var(--link);
  text-decoration: none;
}

a:hover {
  color: var(--link-hover);
  text-decoration: underline;
}

a:visited {
  color: var(--link);
}

/* ── Code ────────────────────────────────────────────── */

code {
  background: var(--code-bg);
  color: var(--fg);
  padding: 0.15em 0.4em;
  border-radius: 6px;
  font-family: ui-monospace, SFMono-Regular, "Cascadia Code", "Liberation Mono", monospace;
  font-size: 0.9em;
  border: 1px solid var(--border);
}

pre {
  background: var(--pre-bg);
  color: var(--fg);
  padding: 1rem;
  overflow-x: auto;
  border-radius: 8px;
  font-family: ui-monospace, SFMono-Regular, "Cascadia Code", "Liberation Mono", monospace;
  font-size: 0.875rem;
  line-height: 1.5;
  border: 1px solid var(--border);
  margin: 1em 0;
}

pre code {
  background: none;
  padding: 0;
  border: none;
  font-size: inherit;
}

/* ── Tables ──────────────────────────────────────────── */

table {
  border-collapse: collapse;
  margin: 1em 0;
  width: 100%;
  font-size: 0.9rem;
}

th, td {
  border: 1px solid var(--border);
  padding: 0.5em 0.75em;
  text-align: left;
}

th {
  background: var(--code-bg);
  font-weight: 600;
}

tr:nth-child(even) {
  background: color-mix(in srgb, var(--bg) 97%, var(--fg));
}

/* ── Blockquotes ─────────────────────────────────────── */

blockquote {
  border-left: 4px solid var(--accent);
  color: var(--muted);
  padding: 0.5em 1em;
  margin: 0 0 1.2em;
  background: color-mix(in srgb, var(--bg) 98%, var(--accent));
  border-radius: 0 6px 6px 0;
}

blockquote p:last-child {
  margin-bottom: 0;
}

/* ── Lists ────────────────────────────────────────────── */

ul, ol {
  padding-left: 1.5em;
  margin: 0 0 1.2em;
}

li { margin-bottom: 0.3em; }

li > ul, li > ol { margin-bottom: 0; }

/* ── Horizontal rules ────────────────────────────────── */

hr {
  border: none;
  border-top: 1px solid var(--border);
  margin: 2em 0;
}

/* ── Images ──────────────────────────────────────────── */

img {
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  margin: 1em 0;
}

/* ── Definition lists ─────────────────────────────────── */

dt {
  font-weight: 600;
  color: var(--heading);
  margin-top: 1em;
}

dd {
  margin-left: 1.5em;
  color: var(--fg);
}

/* ── Task lists / checkboxes ──────────────────────────── */

input[type="checkbox"] {
  accent-color: var(--accent);
}

/* ── Site header (landing pages) ───────────────────────── */

.site-header {
  text-align: center;
  padding: 3em 0 2em;
  border-bottom: 1px solid var(--border);
  margin-bottom: 2em;
}

.site-header h1 {
  font-size: 3rem;
  margin: 0;
}

.site-header p {
  color: var(--muted);
  font-size: 1.1rem;
  margin-top: 0.5em;
}

/* ── Site footer (landing pages) ───────────────────────── */

.site-footer {
  text-align: center;
  padding: 2em 0;
  border-top: 1px solid var(--border);
  margin-top: 3em;
  color: var(--muted);
  font-size: 0.875rem;
}

/* ── Card grid (landing pages) ─────────────────────────── */

.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 1.25rem;
  margin: 1.5em 0;
}

.card {
  background: var(--code-bg);
  border: 1px solid var(--border);
  border-radius: 10px;
  padding: 1.5rem;
  transition: border-color 0.2s;
}

.card:hover {
  border-color: var(--accent);
}

.card h3 {
  margin-top: 0;
  font-size: 1.1rem;
}

.card p {
  color: var(--muted);
  font-size: 0.9rem;
  margin-bottom: 0;
}

/* ── Alerts / callouts ─────────────────────────────────── */

.alert {
  padding: 0.75em 1em;
  border-radius: 8px;
  border-left: 4px solid;
  margin: 1em 0;
}

.alert-info {
  background: color-mix(in srgb, var(--bg) 96%, var(--info));
  border-color: var(--info);
}

.alert-warning {
  background: color-mix(in srgb, var(--bg) 96%, var(--warning));
  border-color: var(--warning);
}

.alert-error {
  background: color-mix(in srgb, var(--bg) 96%, var(--error));
  border-color: var(--error);
}

.alert-success {
  background: color-mix(in srgb, var(--bg) 96%, var(--success));
  border-color: var(--success);
}

/* ── Table of Contents ─────────────────────────────────── */

nav.toc {
  background: var(--code-bg);
  border: 1px solid var(--border);
  border-radius: 8px;
  padding: 1em 1.5em;
  margin: 1em 0 2em;
}

nav.toc h2 {
  font-size: 1rem;
  margin: 0 0 0.5em;
  border: none;
  padding: 0;
}

nav.toc ul {
  margin: 0;
  padding-left: 1.5em;
}

nav.toc li {
  margin-bottom: 0.15em;
}

/* ── Footnotes ─────────────────────────────────────────── */

.footnotes {
  margin-top: 3em;
  padding-top: 1em;
  border-top: 1px solid var(--border);
  font-size: 0.875rem;
  color: var(--muted);
}

.footnotes ol { padding-left: 1.2em; }

/* ── Print styles ──────────────────────────────────────── */

@media print {
  @page {
    margin: 2cm;
  }

  body {
    background: white;
    color: black;
    font-size: 12pt;
    line-height: 1.5;
    padding: 0;
    max-width: none;
  }

  code, pre {
    background: #f5f5f5;
    color: black;
    border-color: #ddd;
  }

  a {
    color: black;
    text-decoration: underline;
  }

  h1, h2, h3, h4, h5, h6 {
    color: black;
    page-break-after: avoid;
  }

  pre, blockquote, table {
    page-break-inside: avoid;
  }

  img {
    page-break-inside: avoid;
  }

  .site-header, .site-footer, nav.toc {
    border-color: #ddd;
  }
}

/* ── Responsive ─────────────────────────────────────────── */

@media (max-width: 768px) {
  body {
    padding: 1.25rem;
    font-size: 0.95rem;
  }

  h1 { font-size: 1.75rem; }
  h2 { font-size: 1.35rem; }

  .card-grid {
    grid-template-columns: 1fr;
  }

  .site-header {
    padding: 2em 0 1.5em;
  }

  .site-header h1 {
    font-size: 2rem;
  }
}

@media (max-width: 480px) {
  body {
    padding: 1rem;
    font-size: 0.9rem;
  }

  h1 { font-size: 1.5rem; }
  h2 { font-size: 1.2rem; }
}

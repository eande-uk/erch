/* erch mdbook Theme Variables
   Overrides mdbook's default CSS variables with the current erch theme.
   Place in your mdbook project as theme/css/variables.css, or
   symlink ~/wiki/theme/css/variables.css → this file.
   Auto-updates on every theme change via erch-theme-set-templates. */

:root {
  --bg: {{ background }};
  --fg: {{ foreground }};
  --sidebar-bg: {{ background }};
  --sidebar-fg: {{ foreground }};
  --sidebar-non-existant: {{ color8 }};
  --sidebar-active: {{ accent }};
  --sidebar-spacer: {{ color8 }};
  --scrollbar: {{ color8 }};
  --icons: {{ color8 }};
  --icons-hover: {{ foreground }};
  --links: {{ color4 }};
  --inline-code-color: {{ color6 }};
  --theme-popup-bg: {{ color0 }};
  --theme-popup-border: {{ color8 }};
  --theme-hover: {{ color8 }};
  --quote-bg: color-mix(in srgb, {{ background }} 97%, {{ foreground }});
  --quote-border: {{ accent }};
  --table-border-color: {{ color8 }};
  --copy-button-header-bg: color-mix(in srgb, {{ background }} 95%, {{ foreground }});
  --copy-button-header-text: {{ color8 }};
  --copy-button-header-hover: {{ accent }};
  --copy-button-header-active: {{ accent }};
  --searchbar-bg: color-mix(in srgb, {{ background }} 95%, {{ foreground }});
  --searchbar-border-color: {{ color8 }};
  --searchbar-fg: {{ foreground }};
  --searchbar-shadow-color: transparent;
}

@media (prefers-color-scheme: light) {
  :root {
    --bg: whitesmoke;
    --fg: #333;
    --sidebar-bg: whitesmoke;
    --sidebar-fg: #333;
    --sidebar-non-existant: #aaa;
    --sidebar-active: {{ accent }};
    --sidebar-spacer: #ccc;
    --scrollbar: #ccc;
    --icons: #aaa;
    --icons-hover: #333;
    --links: {{ color4 }};
    --inline-code-color: {{ color6 }};
    --theme-popup-bg: #f5f5f5;
    --theme-popup-border: #ccc;
    --theme-hover: #e0e0e0;
    --quote-bg: #fafafa;
    --quote-border: {{ accent }};
    --table-border-color: #ddd;
    --copy-button-header-bg: #eee;
    --copy-button-header-text: #666;
    --copy-button-header-hover: {{ accent }};
    --copy-button-header-active: {{ accent }};
    --searchbar-bg: #eee;
    --searchbar-border-color: #ddd;
    --searchbar-fg: #333;
    --searchbar-shadow-color: transparent;
  }
}

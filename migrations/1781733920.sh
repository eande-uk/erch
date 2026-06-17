echo "Bootstrap ~/wiki/ notes directory with vimwiki + mdbook config"

NOTES_DIR="$HOME/wiki"

if [[ ! -d $NOTES_DIR ]]; then
  mkdir -p "$NOTES_DIR/notes" "$NOTES_DIR/assets"
fi

# Default book.toml
if [[ ! -f $NOTES_DIR/book.toml ]]; then
  if [[ -f $ERCH_PATH/config/notes/book.toml ]]; then
    cp "$ERCH_PATH/config/notes/book.toml" "$NOTES_DIR/book.toml"
  fi
fi

# Default SUMMARY.md
if [[ ! -f $NOTES_DIR/SUMMARY.md ]]; then
  if [[ -f $ERCH_PATH/config/notes/SUMMARY.md ]]; then
    cp "$ERCH_PATH/config/notes/SUMMARY.md" "$NOTES_DIR/SUMMARY.md"
  fi
fi

# Default index.md
if [[ ! -f $NOTES_DIR/index.md ]]; then
  cat >"$NOTES_DIR/index.md" <<'MD'
# Notes

Personal wiki managed with `erch wiki notes`.
MD
fi

# Default notes/index.md
if [[ ! -f $NOTES_DIR/notes/index.md ]]; then
  cat >"$NOTES_DIR/notes/index.md" <<'MD'
# Notes Index

Start writing notes here.
MD
fi

# Symlink mdbook theme CSS if erch theme is active
THEME_VARS="$HOME/.config/erch/current/theme/mdbook-variables.css"
if [[ -f $THEME_VARS ]]; then
  mkdir -p "$NOTES_DIR/theme/css"
  if [[ ! -e $NOTES_DIR/theme/css/variables.css ]]; then
    ln -sf "$THEME_VARS" "$NOTES_DIR/theme/css/variables.css"
    echo "  Symlinked mdbook theme → erch theme"
  fi
fi

# Vimwiki nvim config
NVIM_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim/after/plugin"
if [[ -d $NVIM_DIR ]] && [[ ! -f $NVIM_DIR/vimwiki.lua ]]; then
  if [[ -f $ERCH_PATH/config/notes/vimwiki.lua ]]; then
    cp "$ERCH_PATH/config/notes/vimwiki.lua" "$NVIM_DIR/vimwiki.lua"
    echo "  Installed vimwiki config → $NVIM_DIR/vimwiki.lua"
  fi
fi

# Clean up old gh-style.css from ~/.dotfiles/
if [[ -f $HOME/.dotfiles/gh-style.css ]]; then
  echo "  Note: ~/.dotfiles/gh-style.css is no longer used. erch wiki html uses theme-aware CSS."
  echo "  You can safely remove it: rm -f ~/.dotfiles/gh-style.css"
fi

echo "Install erch pre-commit hook to enforce PR workflow"

HOOK_SRC="$ERCH_PATH/config/git-hooks/pre-commit"
HOOK_DST="$ERCH_PATH/.git/hooks/pre-commit"

if [[ ! -f $HOOK_DST ]]; then
  cp "$HOOK_SRC" "$HOOK_DST"
  chmod +x "$HOOK_DST"
  echo "  Installed pre-commit hook → $HOOK_DST"
else
  echo "  Pre-commit hook already exists at $HOOK_DST — skipping"
fi

# Install NPX wrappers by profile
# Only opencode is installed by default, and only for work/school.
# Other NPX wrappers (pi, codex, etc.) are available post-install.

case "$ERCH_PROFILE" in
  work|school|all)
    erch-npx-install opencode-ai opencode
    ;;
esac

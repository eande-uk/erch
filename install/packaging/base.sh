# Install packages by profile
# ERCH_PROFILE is set by preflight/profile.sh

PKG_DIR="$ERCH_INSTALL/packages"

# Always install common packages
echo "  Installing common packages…"
mapfile -t common < <(grep -v '^#' "$PKG_DIR/common.pkgs" | grep -v '^$')
erch-pkg-add "${common[@]}"

# Install profile-specific packages
case "$ERCH_PROFILE" in
  all)
    mapfile -t extra < <(grep -v '^#' "$PKG_DIR/all.pkgs" | grep -v '^$')
    ;;
  work)
    mapfile -t extra < <(grep -v '^#' "$PKG_DIR/work.pkgs" | grep -v '^$')
    ;;
  school)
    mapfile -t extra < <(grep -v '^#' "$PKG_DIR/school.pkgs" | grep -v '^$')
    ;;
  game)
    mapfile -t extra < <(grep -v '^#' "$PKG_DIR/game.pkgs" | grep -v '^$')
    ;;
esac

if [[ ${#extra[@]} -gt 0 ]]; then
  echo "  Installing ${ERCH_PROFILE} packages…"
  erch-pkg-add "${extra[@]}"
fi

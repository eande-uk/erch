# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ERCH_INSTALL/erch-base.packages" | grep -v '^$')
erch-pkg-add "${packages[@]}"

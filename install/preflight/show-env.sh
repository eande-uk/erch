# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ERCH_CHROOT_INSTALL|ERCH_ONLINE_INSTALL|ERCH_USER_NAME|ERCH_USER_EMAIL|USER|HOME|ERCH_REPO|ERCH_REF|ERCH_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done

# Install Python packages by profile via mise + uv
# Only for work/school/all profiles

case "$ERCH_PROFILE" in
  work|school|all)
    echo "  Installing Python packages via mise + uv…"
    mise exec python -- uv pip install weasyprint
    ;;
esac

ERCH_MIGRATIONS_STATE_PATH=~/.local/state/erch/migrations
mkdir -p $ERCH_MIGRATIONS_STATE_PATH

for file in ~/.local/share/erch/migrations/*.sh; do
  touch "$ERCH_MIGRATIONS_STATE_PATH/$(basename "$file")"
done

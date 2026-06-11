# Place in each assistant's global skills directory so the erch skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$ERCH_PATH/default/erch-skill" ~/.agents/skills/erch
ln -sfn "$ERCH_PATH/default/erch-skill" ~/.claude/skills/erch
ln -sfn "$ERCH_PATH/default/erch-skill" ~/.codex/skills/erch
ln -sfn "$ERCH_PATH/default/erch-skill" ~/.pi/agent/skills/erch

echo "Change to openai-codex instead of openai-codex-bin"

if erch-pkg-present openai-codex-bin; then
    erch-pkg-drop openai-codex-bin
    erch-pkg-add openai-codex
fi

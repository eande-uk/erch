#!/bin/bash
# Tests for erch wiki command: CLI metadata, init, configs, templates

set -euo pipefail

ROOT=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
CLI="$ROOT/bin/erch"
TMPDIR=""

export PATH="$ROOT/bin:$PATH"

pass() {
  printf 'ok - %s\n' "$1"
}

fail() {
  printf 'not ok - %s\n' "$1" >&2
  exit 1
}

assert_output_contains() {
  local description="$1"
  local output="$2"
  local expected="$3"

  if [[ $output != *"$expected"* ]]; then
    printf 'Expected output to contain: %s\n' "$expected" >&2
    printf 'Actual output:\n%s\n' "$output" >&2
    fail "$description"
  fi

  pass "$description"
}

skip() {
  local description="$1"
  printf 'ok - %s # skip\n' "$description"
}

cleanup() {
  [[ -n $TMPDIR && -d $TMPDIR ]] && rm -rf "$TMPDIR"
}
trap cleanup EXIT

# ── Binary exists and is executable ────────────────────────

[[ -x $ROOT/bin/erch-wiki ]] || fail "erch-wiki binary is executable"
pass "erch-wiki binary is executable"

# ── Metadata ───────────────────────────────────────────────

header=$(awk '
  NR == 1 && /^#!/ { next }
  /^[[:space:]]*$/ { if (seen) print; next }
  /^[[:space:]]*#/ { seen=1; print; next }
  { exit }
' "$ROOT/bin/erch-wiki")

grep -q '^# erch:summary=' <<<"$header" || fail "wiki metadata has summary"
pass "wiki metadata has summary"

grep -q '^# erch:group=wiki' <<<"$header" || fail "wiki metadata has group=wiki"
pass "wiki metadata has group=wiki"

! grep -q '^# erch:binary=' <<<"$header" || fail "wiki metadata does not repeat inferred binary"
pass "wiki metadata does not repeat inferred binary"

# ── CLI discovery via erch commands --json ─────────────────

"$CLI" commands --json | jq -e '.commands[] | select(.binary == "erch-wiki" and .route == "erch wiki")' >/dev/null
pass "erch wiki is discovered in commands --json"

"$CLI" commands --json | jq -e '.commands[] | select(.binary == "erch-wiki" and .group == "wiki")' >/dev/null
pass "erch wiki has wiki group in JSON"

"$CLI" commands --json | jq -e '.commands[] | select(.binary == "erch-wiki" and (.routes | index("erch wiki")))' >/dev/null
pass "erch wiki routes include erch wiki"

# ── erch wiki --help ───────────────────────────────────────

output=$("$CLI" wiki --help)
assert_output_contains "wiki help shows subcommands" "$output" "erch wiki init"
assert_output_contains "wiki help shows serve" "$output" "erch wiki serve"
assert_output_contains "wiki help shows html" "$output" "erch wiki html"
assert_output_contains "wiki help shows pdf" "$output" "erch wiki pdf"
assert_output_contains "wiki help shows build" "$output" "build"
assert_output_contains "wiki help shows notes sub-group" "$output" "notes"

output=$("$CLI" wiki)
assert_output_contains "bare wiki shows usage" "$output" "erch wiki"

# ── erch wiki notes --help ─────────────────────────────────

output=$("$CLI" wiki notes --help)
assert_output_contains "wiki notes help shows init" "$output" "erch wiki notes init"
assert_output_contains "wiki notes help shows serve" "$output" "erch wiki notes serve"
assert_output_contains "wiki notes help shows build" "$output" "erch wiki notes build"

# ── wiki group appears in main help ────────────────────────

output=$("$CLI" --help)
assert_output_contains "main help includes wiki group" "$output" "wiki"

# ── erch wiki init (temp dir) ──────────────────────────────

TMPDIR=$(mktemp -d)
WIKI_DIR="$TMPDIR/testwiki"

output=$("$CLI" wiki init "$WIKI_DIR")
assert_output_contains "wiki init creates skeleton" "$output" "Wiki skeleton created"

[[ -f $WIKI_DIR/book.toml ]] || fail "wiki init creates book.toml"
pass "wiki init creates book.toml"

[[ -f $WIKI_DIR/src/SUMMARY.md ]] || fail "wiki init creates SUMMARY.md"
pass "wiki init creates SUMMARY.md"

[[ -f $WIKI_DIR/src/index.md ]] || fail "wiki init creates index.md"
pass "wiki init creates index.md"

[[ -d $WIKI_DIR/src/docs ]] || fail "wiki init creates docs dir"
pass "wiki init creates docs dir"

[[ -d $WIKI_DIR/src/assets ]] || fail "wiki init creates assets dir"
pass "wiki init creates assets dir"

# ── erch wiki init idempotent ──────────────────────────────

output=$("$CLI" wiki init "$WIKI_DIR" 2>&1 || true)
assert_output_contains "wiki init is idempotent" "$output" "Wiki skeleton created"

# ── Template CSS files exist and contain theme variables ───

TEMPLATE_ERCH="$ROOT/default/themed/erch.css.tpl"
[[ -f $TEMPLATE_ERCH ]] || fail "erch.css.tpl exists"
pass "erch.css.tpl exists"

grep -q '{{ background }}' "$TEMPLATE_ERCH" || fail "erch.css.tpl has background variable"
pass "erch.css.tpl has background variable"

grep -q '{{ accent }}' "$TEMPLATE_ERCH" || fail "erch.css.tpl has accent variable"
pass "erch.css.tpl has accent variable"

grep -q '{{ foreground }}' "$TEMPLATE_ERCH" || fail "erch.css.tpl has foreground variable"
pass "erch.css.tpl has foreground variable"

TEMPLATE_MDBOOK="$ROOT/default/themed/mdbook-variables.css.tpl"
[[ -f $TEMPLATE_MDBOOK ]] || fail "mdbook-variables.css.tpl exists"
pass "mdbook-variables.css.tpl exists"

grep -q '{{ background }}' "$TEMPLATE_MDBOOK" || fail "mdbook-variables.css.tpl has background variable"
pass "mdbook-variables.css.tpl has background variable"

grep -q '{{ accent }}' "$TEMPLATE_MDBOOK" || fail "mdbook-variables.css.tpl has accent variable"
pass "mdbook-variables.css.tpl has accent variable"

# ── Config files exist ─────────────────────────────────────

[[ -f $ROOT/config/notes/book.toml ]] || fail "config/notes/book.toml exists"
pass "config/notes/book.toml exists"

[[ -f $ROOT/config/notes/SUMMARY.md ]] || fail "config/notes/SUMMARY.md exists"
pass "config/notes/SUMMARY.md exists"

[[ -f $ROOT/config/notes/vimwiki.lua ]] || fail "config/notes/vimwiki.lua exists"
pass "config/notes/vimwiki.lua exists"

[[ -f $ROOT/config/notes/erch.css ]] || fail "config/notes/erch.css exists"
pass "config/notes/erch.css exists"

# ── Static CSS has correct structure ───────────────────────

grep -q '^:root' "$ROOT/config/notes/erch.css" || fail "static CSS has :root"
pass "static CSS has :root"

grep -- '--bg:' "$ROOT/config/notes/erch.css" >/dev/null || fail "static CSS has --bg"
pass "static CSS has --bg"

# ── Packaging scripts ─────────────────────────────────────

[[ -f $ROOT/install/packaging/pip.sh ]] || fail "packaging/pip.sh exists"
pass "packaging/pip.sh exists"

grep -q 'weasyprint' "$ROOT/install/packaging/pip.sh" || fail "pip.sh installs weasyprint"
pass "pip.sh installs weasyprint"

grep -q 'pip.sh' "$ROOT/install/packaging/all.sh" || fail "all.sh sources pip.sh"
pass "all.sh sources pip.sh"

# ── Package files ──────────────────────────────────────────

grep -q '^pandoc' "$ROOT/install/packages/work.pkgs" || fail "work.pkgs has pandoc"
pass "work.pkgs has pandoc"

grep -q '^mdbook' "$ROOT/install/packages/work.pkgs" || fail "work.pkgs has mdbook"
pass "work.pkgs has mdbook"

grep -q '^pandoc' "$ROOT/install/packages/school.pkgs" || fail "school.pkgs has pandoc"
pass "school.pkgs has pandoc"

grep -q '^mdbook' "$ROOT/install/packages/school.pkgs" || fail "school.pkgs has mdbook"
pass "school.pkgs has mdbook"

# ── Migration format ───────────────────────────────────────

MIGRATION="$ROOT/migrations/1781733920.sh"
[[ -f $MIGRATION ]] || fail "migration 1781733920.sh exists"
pass "migration 1781733920.sh exists"

perm=$(stat -c "%a" "$MIGRATION")
if [[ ${#perm} -eq 3 ]]; then perm="0$perm"; fi
[[ $perm == "0644" ]] || fail "migration has 0644 permissions"
pass "migration has 0644 permissions"

head -1 "$MIGRATION" | grep -q '^#!' && fail "migration has no shebang" || true
pass "migration has no shebang"

grep -q 'vimwiki' "$MIGRATION" || fail "migration sets up vimwiki"
pass "migration sets up vimwiki"

grep -q 'gh-style.css' "$MIGRATION" || fail "migration handles old gh-style.css"
pass "migration handles old gh-style.css"

# ── erch GROUP_DESCRIPTIONS has wiki ───────────────────────

grep -q 'GROUP_DESCRIPTIONS\[wiki\]' "$ROOT/bin/erch" || fail "erch GROUP_DESCRIPTIONS has wiki"
pass "erch GROUP_DESCRIPTIONS has wiki"

# ── Integration: html conversion (skip if pandoc missing) ──

if command -v pandoc >/dev/null 2>&1; then
  echo "# Hello" > "$TMPDIR/test.md"
  output=$("$CLI" wiki html "$TMPDIR/test.md" -o "$TMPDIR/test.html")
  [[ -f $TMPDIR/test.html ]] || fail "wiki html produces output file"
  pass "wiki html produces output file"
  grep -q 'Hello' "$TMPDIR/test.html" || fail "wiki html output contains content"
  pass "wiki html output contains content"
else
  skip "wiki html integration (pandoc not installed)"
fi

# ── Integration: pdf conversion (skip if missing deps) ─────

if command -v pandoc >/dev/null 2>&1 && command -v weasyprint >/dev/null 2>&1; then
  output=$("$CLI" wiki pdf "$TMPDIR/test.md" -o "$TMPDIR/test.pdf" 2>&1)
  [[ -f $TMPDIR/test.pdf ]] || fail "wiki pdf produces output file"
  pass "wiki pdf produces output file"
else
  skip "wiki pdf integration (pandoc or weasyprint not installed)"
fi

# test/ — Test Suite

Shell-based tests following the TAP (Test Anything Protocol) format.

## Files

| Test | Coverage | Command |
|------|----------|---------|
| `erch-cli-test.sh` | CLI metadata, routing, help output, JSON, aliases, fallbacks | `bash test/erch-cli-test.sh` |
| `erch-wiki-test.sh` | Wiki command, init, templates, configs, packaging, integration | `bash test/erch-wiki-test.sh` |
| `erch-salat-test.sh` | Prayer times, cache parsing, next prayer, language toggle, Waybar output | `bash test/erch-salat-test.sh` |

## CI Checks

The CI pipeline (`.github/workflows/ci.yml`) runs:

1. **shellcheck** — on all shell scripts (severity: style)
2. **metadata validation** — every `bin/*.sh` has `# erch:summary=`
3. **migration format** — 0644 perms, no shebang
4. **package validation** — no duplicates, no overlap between common and work
5. **wiki tests** — full test suite with pandoc
6. **cli tests** — metadata, routing, JSON output, edge cases
7. **salat tests** — prayer times, cache, Waybar output, language toggle

## Writing Tests

Follow the existing pattern:

```bash
pass() { printf 'ok - %s\n' "$1"; }
fail() { printf 'not ok - %s\n' "$1" >&2; exit 1; }

assert_output_contains() {
  local desc="$1" output="$2" expected="$3"
  if [[ $output != *"$expected"* ]]; then
    printf 'Expected: %s\n' "$expected" >&2
    printf 'Got:\n%s\n' "$output" >&2
    fail "$desc"
  fi
  pass "$desc"
}
```

See `docs/manual/src/contributing.md` for contribution guidelines.

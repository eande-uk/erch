# Contributing

erch is open source and welcomes contributions. See [CONTRIBUTING.md](https://github.com/eande-os/erch/blob/master/CONTRIBUTING.md) for the full guide.

## Quick Summary

1. **Branch from `master`** — name your branch `user:short-description`
2. **Make your changes** — follow the code style (two spaces, bash 5 conditionals, no tabs)
3. **Add metadata** — every `erch-*` binary needs `# erch:summary=`
4. **Update docs** — update READMEs, per-directory docs, and the manual if your change affects users
5. **Add/run tests** — `bash test/erch-cli-test.sh` and `bash test/erch-wiki-test.sh`
6. **Open a PR** — the template guides you through the checklist

## Code Style

- Two spaces for indentation, no tabs
- Use `[[ ]]` for string tests, `(( ))` for numeric tests
- Shebangs: `#!/bin/bash` (never `#!/usr/bin/env bash`)
- Quote string literals in comparisons: `[[ $var == "value" ]]`
- Commands start with `erch-` prefix

## Commit Messages

```
type: short description

Longer description if needed. Max 72 chars per line.
```

Types: `feat`, `fix`, `chore`, `docs`, `refactor`, `test`, `ci`

## PR Checklist

Before opening a PR:

- [ ] Tests pass (`bash test/*.sh`)
- [ ] Metadata updated (summary, args, group on new binaries)
- [ ] Readme / per-directory docs updated
- [ ] Migration format: 0644, no shebang, starts with `echo`
- [ ] Self-review: no commented code, debug logs, or secrets
- [ ] No commercial dependencies added to defaults

# Contributing

erch is open source and welcomes contributions. See [CONTRIBUTING.md](https://github.com/eande-os/erch/blob/master/CONTRIBUTING.md) for the full guide.

## Quick Summary

1. **Create a feature branch** — `erch branch create <name>` (creates `user:<name>` from master)
2. **Make your changes** — follow the code style (two spaces, bash 5 conditionals, no tabs)
3. **Commit** — the pre-commit hook validates branch, syntax, metadata, migrations, and conflict markers
4. **Push and open a PR** — `git push -u origin user:<name>` → open PR at GitHub
5. **Merge via squash merge** — PR must pass CI and be reviewed

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

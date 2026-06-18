# Contributing

## Branch naming

```
user:short-description
```

Examples: `lwssim:fix-waybar-icon`, `jane:add-theme-toggle`

## Commit convention

```
type: short description

type: feat | fix | chore | docs | refactor | test | ci
```

Examples:
- `feat: add profile-based package selection`
- `fix: correct waybar icon path`
- `docs: add install pipeline README`

## PR checklist

Before requesting review:

- [ ] Tests pass
- [ ] Metadata updated if adding/modifying a command
- [ ] README updated if changing a subdir structure
- [ ] Migration follows format (no shebang, 0644 perms) if adding one
- [ ] Self-reviewed diff
- [ ] No commercial dependencies added

## Code style

See [AGENTS.md](AGENTS.md) for bash style rules.

## PR Workflow

All changes to `master` must go through a pull request. Direct commits to
master are blocked by the pre-commit hook.

```bash
# 1. Create a feature branch from master
erch branch create fix-waybar-icon

# 2. Make changes and commit
git add <files>
git commit    # Pre-commit hook validates: branch, syntax, metadata, migrations, conflicts

# 3. Push and open a PR
git push -u origin user:fix-waybar-icon
# → Open PR at https://github.com/eande-os/erch

# 4. After PR is merged (squash merge), delete the branch
git branch -d user:fix-waybar-icon
```

**Force override:** `git commit --no-verify` or `ERCH_ALLOW_DIRECT_MASTER=1 git commit`

## CI

Before a PR can be merged, all CI checks must pass:
- shellcheck (bash style)
- Metadata validation
- Migration format
- Package validation
- Wiki tests

## Releases

erch uses semver. `master` is always stable. `rc` and `dev` track upstream Omarchy.

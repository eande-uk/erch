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

## Releases

erch uses semver. `master` is always stable. `rc` and `dev` track upstream Omarchy.

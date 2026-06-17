# install/ — Install Pipeline

Everything needed to install erch from scratch. This is L0 in the layer model.

## Structure

| Path | Purpose |
|------|---------|
| `packages/*.pkgs` | Package profiles (common, work, school, game, all) |
| `packaging/*.sh` | Install scripts for package groups (base, fonts, nvim, icons, webapps, tuis, npx, pip, hardware) |
| `preflight/` | Pre-install checks and profile selection |
| `config/hardware/` | Hardware-specific install scripts (ASUS ROG, Framework, Dell XPS, Surface) |
| `boot.sh` | Online installer entry point (curl pipe) |
| `install.sh` | Local installer entry point |

## Profile Selection

At install time, the user picks a profile. `common.pkgs` is always installed, plus exactly one of work/school/game. The `all.pkgs` file is the union of all profiles (used by ISO builder).

## Package Addition

To add a package to a profile:

1. Edit the appropriate `.pkgs` file
2. Update `install/packages/README.md` (the package ledger)
3. Update `erch-base.packages` (union for ISO builder)
4. Update profile docs in `docs/erch/PROFILES.md`

See `docs/ARCHITECTURE.md#layer-0-system` for the design. See `docs/manual/src/getting-started.md` for the user guide.

# Versioning and Releases

This project uses semantic versioning: `MAJOR.MINOR.PATCH`.

## What each bump means

- `PATCH` (`x.y.Z`): bug fixes, CI/packaging/docs fixes, no intentional API breaks.
- `MINOR` (`x.Y.z`): new backwards-compatible features (new themes, palettes, arguments).
- `MAJOR` (`X.y.z`): breaking changes.

## Source of truth

- `DESCRIPTION` `Version` is the package version used by R.
- `NEWS.md` records user-facing changes for each release.
- Git tags (`vX.Y.Z`) mark release commits.

All three should match for every release.

## Release checklist

1. Update `DESCRIPTION` version.
2. Add a `NEWS.md` section for the new version and date.
3. Run checks locally:
   - `R CMD build .`
   - `R CMD check --no-manual --as-cran ggpubfigs_<version>.tar.gz`
4. Merge to `master`.
5. Create and push a tag for the release commit:
   - `git tag -a vX.Y.Z -m "ggpubfigs vX.Y.Z"`
   - `git push origin vX.Y.Z`
6. (Optional) Create a GitHub Release from the tag.

## Recommended branch workflow

- Use short-lived feature branches (`feat/*`, `fix/*`, `chore/*`).
- Open PRs into `master` so CI validates changes before merge.
- Avoid direct pushes to `master` except for urgent fixes.

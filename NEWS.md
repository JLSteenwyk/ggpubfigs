# ggpubfigs

## 1.1.1 (2026-02-17)

- Added CI-based R compatibility checks for R 4.4, R 4.5, and devel.
- Fixed CI dependency setup for `rcmdcheck` and vignette build packages.
- Added missing package metadata/imports to satisfy `R CMD check`:
  - Added `markdown` to `Suggests`.
  - Added `grid` to `Imports`.
  - Added explicit imports in `NAMESPACE` for ggplot2 theme helpers and `grid::unit`.
- Fixed documentation cross-reference by anchoring `wes_palette` to `wesanderson`.
- Updated build ignore settings to exclude `.github` and `master` from source tarballs.
- Added README badge that explicitly communicates tested R versions.

# ggpubfigs

## 1.1.3 (2026-02-24)

- Added four new colorblind-friendly palettes:
  - `tableau_ten`
  - `glasbey_twelve`
  - `viridis_eight`
  - `cividis_eight`
- Added tests that validate availability and expected sizes of the new palettes.
- Updated README palette table and man pages to include the new palettes.

## 1.1.2 (2026-02-24)

- Added a `testthat` suite for palette and theme behavior.
- Updated theme internals to use `linewidth` in `element_line()`/`element_rect()` to avoid ggplot2 `size` deprecation warnings.
- Fixed palette documentation to reference `ito_seven` (instead of `ito_eight`) in `friendly_pal()` docs.

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

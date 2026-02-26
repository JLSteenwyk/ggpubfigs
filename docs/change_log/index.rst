.. _change_log:


Change log
==========

Major changes to ggpubfigs are summarized here.

**1.1.3** (2026-02-24)
Added four new colorblind-friendly palettes: ``tableau_ten``, ``glasbey_twelve``,
``viridis_eight``, and ``cividis_eight``. Added tests for new palette availability
and expected sizes. Updated palette documentation and README.

|

**1.1.2** (2026-02-24)
Added ``testthat`` suite for palette and theme behavior. Updated theme internals
to use ``linewidth`` in ``element_line()``/``element_rect()`` to avoid ggplot2
deprecation warnings. Fixed palette documentation to reference ``ito_seven``.

|

**1.1.1** (2026-02-17)
Added CI-based R compatibility checks for R 4.4, 4.5, and devel. Fixed CI
dependency setup and package metadata/import issues for ``R CMD check``.
Updated build ignore settings and README R-version testing badge.

^^^^^

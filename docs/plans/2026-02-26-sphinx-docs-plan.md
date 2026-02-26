# ggpubfigs Sphinx Documentation Site — Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Create a Sphinx documentation site for ggpubfigs matching ClipKIT's infrastructure, deployed to jlsteenwyk.com/ggpubfigs/ via GitHub Pages.

**Architecture:** Sphinx with sphinx_rtd_theme, RST source files, GitHub Actions CI builds and deploys to gh-pages branch. Static images copied from existing `master/docs/_static/` and ClipKIT's asset set.

**Tech Stack:** Sphinx, sphinx_rtd_theme, sphinx-autobuild, GitHub Actions, JamesIves/github-pages-deploy-action

---

### Task 1: Create docs infrastructure files

**Files:**
- Create: `docs/requirements.txt`
- Create: `docs/Makefile`
- Create: `docs/conf.py`

**Step 1: Create `docs/requirements.txt`**

```
sphinx>=8.0
sphinx_rtd_theme>=1.3
sphinx-autobuild>=2021.3.14
```

**Step 2: Create `docs/Makefile`**

```makefile
# Minimal makefile for Sphinx documentation

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

watch:
	@sphinx-autobuild $(SOURCEDIR) $(BUILDDIR)/html

clean:
	rm -rf $(BUILDDIR)/*
```

**Step 3: Create `docs/conf.py`**

Adapted from ClipKIT's conf.py with ggpubfigs-specific values:
- `project = "ggpubfigs"`
- `copyright = "2020 Jacob L. Steenwyk"`
- `html_logo = "_static/img/logo.png"`
- `html_favicon = "_static/img/logo.png"` (reuse logo as favicon)
- Same theme options, extensions, sidebar config as ClipKIT
- `htmlhelp_basename = "ggpubfigsdoc"`

**Step 4: Verify build works**

Run: `cd docs && pip install -r requirements.txt && make html`
Expected: Build succeeds (even with empty index.rst placeholder)

**Step 5: Commit**

```bash
git add docs/requirements.txt docs/Makefile docs/conf.py
git commit -m "docs: add Sphinx infrastructure (conf.py, Makefile, requirements)"
```

---

### Task 2: Copy static assets and create templates

**Files:**
- Create: `docs/_static/custom.css`
- Create: `docs/_static/img/` (copy PNGs)
- Create: `docs/_templates/sidebar-top.html`

**Step 1: Copy images from `master/docs/_static/` to `docs/_static/img/`**

```bash
mkdir -p docs/_static/img
cp master/docs/_static/*.png docs/_static/img/
```

**Step 2: Copy developer photos and social icons from ClipKIT**

```bash
cp ../ClipKIT/docs/_static/img/Steenwyk.jpg docs/_static/img/
cp ../ClipKIT/docs/_static/img/Rokas.jpeg docs/_static/img/
cp ../ClipKIT/docs/_static/img/GoogleScholar.png docs/_static/img/
cp ../ClipKIT/docs/_static/img/Github.png docs/_static/img/
cp ../ClipKIT/docs/_static/img/Twitter.png docs/_static/img/
```

**Step 3: Create `docs/_static/custom.css`**

Copy from ClipKIT's custom.css verbatim — same Oxygen font, sidebar styling, link hover colors, code block styling.

**Step 4: Create `docs/_templates/sidebar-top.html`**

Adapted from ClipKIT's template:
- Update Google Analytics ID (or remove if not needed)
- Update logo image path to `_static/img/logo.png`
- Update GitHub button URLs to `https://github.com/jlsteenwyk/ggpubfigs`
- Update alt text to "ggpubfigs logo"

**Step 5: Commit**

```bash
git add docs/_static/ docs/_templates/
git commit -m "docs: add static assets, CSS, and sidebar template"
```

---

### Task 3: Create index.rst (landing page)

**Files:**
- Create: `docs/index.rst`

**Step 1: Write `docs/index.rst`**

Content (adapted from ClipKIT's index.rst):
- ggpubfigs logo image directive (link to `https://jlsteenwyk.com/ggpubfigs`)
- One-line description: "ggpubfigs is a ggplot2 extension that provides publication-ready themes and colorblind-friendly color palettes for the life sciences."
- Citation block: Steenwyk & Rokas, Microbiology Resource Announcements, 2021. DOI: 10.1128/MRA.00871-21
- Quick Start section with install command (`devtools::install_github("JLSteenwyk/ggpubfigs")`) and two code+image examples (ito_seven + theme_big_simple, bright_seven + theme_big_grid)
- Toctree with maxdepth 4 linking: about/index, usage/index, change_log/index, other_software/index, frequently_asked_questions/index

**Step 2: Verify build**

Run: `make -C docs html`
Expected: Build succeeds, index.html renders with logo and content

**Step 3: Commit**

```bash
git add docs/index.rst
git commit -m "docs: add landing page (index.rst)"
```

---

### Task 4: Create about/index.rst

**Files:**
- Create: `docs/about/index.rst`

**Step 1: Write `docs/about/index.rst`**

Content (adapted from ClipKIT's about page):
- About section header
- Project motivation paragraph: ggpubfigs was developed to provide publication-ready ggplot2 themes and colorblind-friendly palettes. Mention the importance of accessibility in scientific figures.
- "The Developers" section with:
  - Jacob L. Steenwyk bio + photo (`../_static/img/Steenwyk.jpg`) + Google Scholar/GitHub/Twitter links
  - Antonis Rokas bio + photo (`../_static/img/Rokas.jpeg`) + Google Scholar/Twitter links
- Use same RST image substitution pattern as ClipKIT (inline `|JLSteenwyk|`, `|GoogleScholarSteenwyk|`, etc.)

**Step 2: Verify build**

Run: `make -C docs html`
Expected: about/index.html renders with photos and social links

**Step 3: Commit**

```bash
git add docs/about/
git commit -m "docs: add about page with developer bios"
```

---

### Task 5: Create usage/index.rst

**Files:**
- Create: `docs/usage/index.rst`

**Step 1: Write `docs/usage/index.rst`**

Content — the main reference page with two major sections:

**Themes section:**
For each of the 8 themes, include:
- Bold theme name as subsection
- R code block showing scatter plot usage with `iris` dataset
- Inline image of scatter plot result
- R code block showing histogram usage with `iris` dataset
- Inline image of histogram result

Order: theme_grid, theme_big_grid, theme_simple, theme_big_simple, theme_grey (publication), then theme_black, theme_blue, theme_red (presentation).

Image paths: `../_static/img/grid.png`, `../_static/img/grid_histo.png`, etc.

**Palettes section:**
- Introduction paragraph about colorblind-friendly palettes
- Naming convention explanation
- Discrete usage example with `contrast_three` + bar chart image
- Continuous usage example with `contrast_three` volcano + image
- List of all 15 palettes with their names and number of colors

**Step 2: Verify build**

Run: `make -C docs html`
Expected: usage/index.html renders with all theme/palette images inline

**Step 3: Commit**

```bash
git add docs/usage/
git commit -m "docs: add usage page with themes gallery and palettes reference"
```

---

### Task 6: Create change_log/index.rst

**Files:**
- Create: `docs/change_log/index.rst`

**Step 1: Write `docs/change_log/index.rst`**

Content (mirroring NEWS.md in RST format):

```rst
.. _change_log:


Change log
==========

Major changes to ggpubfigs are summarized here.

**1.1.3** (2026-02-24)
Added four new colorblind-friendly palettes: tableau_ten, glasbey_twelve,
viridis_eight, and cividis_eight. Added tests for new palette availability
and expected sizes. Updated palette documentation and README.

**1.1.2** (2026-02-24)
Added testthat suite for palette and theme behavior. Updated theme internals
to use linewidth in element_line()/element_rect(). Fixed palette documentation
to reference ito_seven.

**1.1.1** (2026-02-17)
Added CI-based R compatibility checks for R 4.4, 4.5, and devel. Fixed CI
dependency setup and package metadata/import issues for R CMD check.
```

**Step 2: Commit**

```bash
git add docs/change_log/
git commit -m "docs: add change log page"
```

---

### Task 7: Create frequently_asked_questions/index.rst

**Files:**
- Create: `docs/frequently_asked_questions/index.rst`

**Step 1: Write `docs/frequently_asked_questions/index.rst`**

Content (~5 Q&A entries):

1. "Are ggpubfigs color palettes colorblind friendly?" — Yes, all palettes are designed to be accessible.
2. "How do I use a continuous color palette?" — Use `friendly_pal("name", n, type = "continuous")` with code example.
3. "Can I submit color palettes or themes?" — Yes, contact via Twitter/Bluesky or contact page.
4. "How do I customize a theme further?" — Add ggplot2 `theme()` calls after the ggpubfigs theme.
5. "I'm having trouble installing ggpubfigs, what should I do?" — Ensure devtools is installed, check R version, contact developer.

Use same RST formatting pattern as ClipKIT's FAQ (bold questions, paragraph answers, `|` spacers).

**Step 2: Commit**

```bash
git add docs/frequently_asked_questions/
git commit -m "docs: add FAQ page"
```

---

### Task 8: Create other_software/index.rst

**Files:**
- Create: `docs/other_software/index.rst`

**Step 1: Write `docs/other_software/index.rst`**

```rst
.. _other_software:


Other software
==============

^^^^^

We are grateful that you are exploring our software! If this software is of interest
to you, our other software will likely be too. Please follow this
`link <https://jlsteenwyk.com/software.html>`_
to see other software we have developed!
```

**Step 2: Commit**

```bash
git add docs/other_software/
git commit -m "docs: add other software page"
```

---

### Task 9: Add .Rbuildignore entry for docs/

**Files:**
- Modify: `.Rbuildignore`

**Step 1: Add docs/ exclusion**

Add `^docs$` to `.Rbuildignore` so the Sphinx docs directory is excluded from R package builds.

**Step 2: Commit**

```bash
git add .Rbuildignore
git commit -m "build: exclude docs/ from R package tarball"
```

---

### Task 10: Add GitHub Actions docs workflow

**Files:**
- Create: `.github/workflows/docs.yaml`

**Step 1: Write `.github/workflows/docs.yaml`**

```yaml
name: docs

on:
  push:
    branches: ["master", "main"]
  pull_request:
    branches: ["master", "main"]
  workflow_dispatch:

jobs:
  docs:
    runs-on: macos-latest
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-python@v5
        with:
          python-version: "3.10"

      - name: Build docs
        run: |
          python -m pip install -r docs/requirements.txt
          make -C docs html

      - name: Deploy
        if: github.event_name == 'push' && github.ref == 'refs/heads/master'
        uses: JamesIves/github-pages-deploy-action@v4
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          BRANCH: gh-pages
          FOLDER: docs/_build/html
```

**Step 2: Commit**

```bash
git add .github/workflows/docs.yaml
git commit -m "ci: add GitHub Actions workflow for Sphinx docs deployment"
```

---

### Task 11: Full build verification

**Step 1: Clean build**

Run: `make -C docs clean && make -C docs html`
Expected: Build succeeds with no warnings

**Step 2: Local preview**

Run: `make -C docs watch`
Expected: sphinx-autobuild serves site at http://127.0.0.1:8000, all pages render correctly with images, navigation works

**Step 3: Verify all links in toctree resolve**

Check that all 5 section pages appear in the sidebar navigation.

**Step 4: Final commit (if any fixes needed)**

```bash
git add -A docs/
git commit -m "docs: fix build issues from verification"
```

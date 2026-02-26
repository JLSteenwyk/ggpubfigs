# ggpubfigs Sphinx Documentation Site — Design

**Date:** 2026-02-26
**Status:** Approved

## Goal

Create a Sphinx documentation site for ggpubfigs, matching ClipKIT's infrastructure and structure. Deploy to `jlsteenwyk.com/ggpubfigs/` via GitHub Pages.

## Infrastructure

- **Engine:** Sphinx with `sphinx_rtd_theme`
- **Source format:** reStructuredText (`.rst`)
- **Location:** `docs/` directory at project root
- **Build:** `make -C docs html`, with `sphinx-autobuild` for local preview
- **Deploy:** GitHub Actions on push to `master` → build HTML → deploy to `gh-pages` branch via `JamesIves/github-pages-deploy-action@v4`
- **URL:** `jlsteenwyk.com/ggpubfigs/`

## Site Structure

```
docs/
├── conf.py
├── index.rst
├── about/index.rst
├── usage/index.rst
├── change_log/index.rst
├── frequently_asked_questions/index.rst
├── other_software/index.rst
├── Makefile
├── requirements.txt
├── _static/
│   ├── custom.css
│   └── img/
└── _templates/
    └── sidebar-top.html
```

## Section Content

### index.rst (Landing Page)
- Logo image
- One-line project description
- Citation block (Steenwyk & Rokas, MRA 2021)
- Installation instructions (devtools::install_github)
- Quick start with 2 code + image examples
- Toctree linking all sections

### about/index.rst
- Project motivation and background
- Developer bios for Steenwyk & Rokas with photos
- Social links (Google Scholar, GitHub, Twitter/Bluesky)

### usage/index.rst
- **Themes** section: all 8 themes with R code blocks + inline PNG screenshots (scatter + histogram examples)
- **Palettes** section: all 15 palettes with hex codes, discrete usage example, continuous usage example

### change_log/index.rst
- Versions 1.1.1 through 1.1.3 from NEWS.md

### frequently_asked_questions/index.rst
- ~5 entries: colorblind-friendly info, install troubleshooting, continuous palette usage, theme customization, citation

### other_software/index.rst
- Link to jlsteenwyk.com/software.html

## CI Integration

Add a `docs` job to CI (new workflow or extend existing), matching ClipKIT's pattern:
- Trigger on push/PR to master
- Setup Python 3.10
- Install docs/requirements.txt
- Build with `make -C docs html`
- Deploy to gh-pages branch on push to master only

## Assets

- Copy relevant theme/palette PNGs from `master/docs/_static/` into `docs/_static/img/`
- Reuse developer photos and social icons from ClipKIT's asset set
- Use ggpubfigs logo from `master/docs/_static/`

## Approach

Inline images (Approach A) — embed existing PNG screenshots directly in the Usage page, mirroring ClipKIT's single "Advanced" page pattern. Reuses existing images, simple to maintain.

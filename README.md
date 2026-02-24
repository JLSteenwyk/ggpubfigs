<p align="center">
    <img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/logo.png" alt="Logo" width="400">
    <p align="center">
        <a href="https://github.com/jlsteenwyk/ggpubfigs/graphs/contributors" alt="Contributors">
            <img src="https://img.shields.io/github/contributors/jlsteenwyk/ggpubfigs">
        </a>
        <a href="https://bsky.app/profile/jlsteenwyk.bsky.social" target="_blank" rel="noopener noreferrer">
          <img src="https://img.shields.io/badge/Bluesky-0285FF?logo=bluesky&logoColor=fff">
        </a>
        <br />
        <a href="https://lbesson.mit-license.org/" alt="License">
            <img src="https://img.shields.io/badge/License-MIT-blue.svg">
        </a>
        <a href="https://journals.asm.org/doi/10.1128/MRA.00871-21">
          <img src="https://zenodo.org/badge/DOI/10.1128/MRA.00871-21.svg">
        </a>
        <a href="https://github.com/JLSteenwyk/ggpubfigs/actions/workflows/r-cmd-check.yaml" alt="R tested versions">
            <img src="https://img.shields.io/badge/R%20tested-4.4%20%7C%204.5%20%7C%20devel-success">
        </a>
    </p>
</p>

**ggpubfigs** is a ggplot2 extension that helps create publication ready figures for the life sciences.<br />
Importantly, ggpubfigs implements themes and color palettes that are both aesthetically pleasing and colorblind friendly.
<br /><br />

If you found ggpubfigs helpful, please cite: *ggpubfigs: Colorblind-Friendly Color Palettes and ggplot2
Graphic System Extensions for Publication-Quality Scientific
Figures.* DOI: [10.1128/MRA.00871-21](https://jlsteenwyk.com/publication_pdfs/2021_Steenwyk_and_Rokas_Microbiology_Resource_Announcements.pdf)
<br /><br />

---

## Guide
[Install](#install)<br />
[Quick Start](#quick-start)<br />
[Color palettes](#color-palettes)<br />
[Table of Hex Codes](#table-of-hex-codes)<br />
[Themes](#themes)<br />
[FAQ](#faq)<br />
[Change Log](#change-log)<br />
[Versioning](VERSIONING.md)<br />
[Acknowledgements](#acknowledgements)
<br /><br />

---
## Install
```R
# execute this command only the first time you use ggpubfigs
devtools::install_github("JLSteenwyk/ggpubfigs")
# load ggpubfigs
library(ggpubfigs)
```
<br />

---
## Quick Start
These *quick start* examples demonstrate how to implement two aesthetically pleasing themes and color palettes. 

```R
# using the "ito_seven" color palette and theme_big_simple()
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("ito_seven")) + theme_big_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/ito_big_simple.png" alt="ito_simple" width="400">
</p>
<br />

```R
# using the "bright_seven" color palette and theme_big_grid()
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("bright_seven")) + theme_big_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/bright_big_grid.png" alt="bright_grid" width="400">
</p>
<br />

---
## Color palettes
Color palettes are all colorblind friendly. Thus, your figures will be accessible to more people, which is inarguably better for your audience and you. <br /><br />
Color palettes are named using the following scheme: *identifier* (underscore) *number of colors in color palette*.<br />
<p align="center"><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/friendly_pals.png" alt="friendly_pals" width="400"></p>

To use these colorblind friendly color palettes, use the following command as an example for both discrete and continuous purposes:<br />

```R
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("contrast_three"))
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/contrast_three.png" alt="friendly_pals" width="400">
</p>
<br />

```R
pal <- friendly_pal("contrast_three", 50, type = "continuous")
image(volcano, col = pal)
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/contrast_three_volcano.png" alt="friendly_pals" width="400">
</p>
<br />

---
## Table of Hex Codes
| Palettes       | Colors used                                                                     |
| -------------- | ------------------------------------------------------------------------------- |
| bright_seven   | #4477AA, #228833, #AA3377, #BBBBBB, #66CCEE, #CCBB44, #EE6677                   |
| contrast_three | #004488, #BB5566, #DDAA33                                                       |
| vibrant_seven  | #0077BB, #EE7733, #33BBEE, #CC3311, #009988, #EE3377, #BBBBBB                   |
| muted_nine     | #332288, #117733, #CC6677, #88CCEE, #999933, #882255, #44AA99, #DDCC77, #AA4499 |
| nickel_five    | #648FFF, #FE6100, #785EF0, #FFB000, #DC267F                                     |
| ito_seven      | #0072B2, #D55E00, #009E73, #CC79A7, #56B4E9, #E69F00, #F0E442                   |
| ibm_five       | #648FFF, #785EF0, #DC267F, #FE6100, #FFB000                                     |
| wong_eight     | #E69F00, #56B4E9, #009E73, #F0E442, #0072B2, #D55E00, #CC79A7, #000000          |
| tol_eight      | #332288, #117733, #44AA99, #88CCEE, #DDCC77, #CC6677, #AA4499, #882255          |
| zesty_four     | #F5793A, #A95AA1, #85C0F9, #0F2080                                              |
| retro_four     | #601A4A, #EE442F, #63ACBE, #F9F4EC                                              |

<br />

---
## Themes
### Publication-ready figures 
**theme_grid()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grid.png" alt="Grid" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grid_histo.png" alt="Grid" width="400">
</p>
<br />

**theme_big_grid()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_big_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/big_grid.png" alt="Grid" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_big_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/big_grid_histo.png" alt="Grid" width="400">
</p>
<br />

**theme_simple()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/simple.png" alt="Simple" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/simple_histo.png" alt="Simple" width="400">
</p>
<br />

**theme_big_simple()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_big_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/big_simple.png" alt="Simple" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_big_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/big_simple_histo.png" alt="Simple" width="400">
</p>
<br />

**theme_grey()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grey()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grey.png" alt="Grey" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_grey()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grey_histo.png" alt="Grey" width="400">
</p>
<br />

### Presentation-ready figures 
**theme_black()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_black()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/black.png" alt="Black" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_black()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/black_histo.png" alt="Black" width="400">
</p>
<br />

**theme_blue()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_blue()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/blue.png" alt="Blue" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_blue()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/blue_histo.png" alt="Blue" width="400">
</p>
<br />

**theme_red()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_red()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/red.png" alt="Red" width="400">
</p>
<br />

```R
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_red()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/red_histo.png" alt="Red" width="400">
</p>

<br />

---
## FAQ
**Can I submit color palettes or themes to be incorporated into ggpubfigs?**<br />
Yes! Submissions are encouraged, please feel free to contact me via  [twitter](https://twitter.com/jlsteenwyk) or from my [contact information](https://jlsteenwyk.com/contact.html). 
<br /><br />

---
## Acknowledgements
I would like to thank the blooming R community for all the very helpful online forums, discussions, and open source books that have helped me learn R.<br /><br />
I would also like to acknowledge that some of the example usage and color palette code was developed based on open source code from the [wes anderson](https://github.com/karthik/wesanderson) color palette package. 

---
## Change Log
For full release notes, see [NEWS.md](NEWS.md).

### 1.1.2 (2026-02-24)
- Added `testthat` coverage for palette and theme behavior.
- Migrated theme internals to `linewidth` in `element_line()` and `element_rect()`.
- Fixed `friendly_pal()` documentation to reference `ito_seven`.

### 1.1.1 (2026-02-17)
- Added CI-based R compatibility checks for R 4.4, R 4.5, and devel.
- Fixed CI dependency setup and package metadata/import issues for `R CMD check`.
- Updated build ignore settings and README R-version testing badge.

<!-- ---
## Bonus

Here is a tutorial on how to create a violin, boxplot, dot plot hybrid. The function geom_violinhalf() comes from the following [link](https://easystats.github.io/see/reference/geom_violinhalf.html).

```R
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
    geom_violinhalf() + theme_simple() +
    scale_fill_manual(values = friendly_pal("ito_seven")) +
    geom_boxplot(position=position_nudge(x=-.1), width=0.1, outlier.shape=NA) +
    geom_jitter(alpha=.5, width=.025, size=2)
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/violin_boxplot_dotplot_hybrid.png" alt="hybrid" width="400">
</p>
<br /> -->

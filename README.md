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
[Palette Swatches and Hex Codes](#palette-swatches-and-hex-codes)<br />
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
Palette swatches and hex codes are shown below for quick visual comparison.<br />

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
## Palette Swatches and Hex Codes
| Palette | Swatches | Colors used |
| -------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| bright_seven | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#4477AA;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#228833;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#AA3377;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#BBBBBB;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#66CCEE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CCBB44;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#EE6677;margin-right:2px;"></span> | #4477AA, #228833, #AA3377, #BBBBBB, #66CCEE, #CCBB44, #EE6677 |
| contrast_three | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#004488;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#BB5566;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DDAA33;margin-right:2px;"></span> | #004488, #BB5566, #DDAA33 |
| vibrant_seven | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#0077BB;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#EE7733;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#33BBEE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CC3311;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#009988;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#EE3377;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#BBBBBB;margin-right:2px;"></span> | #0077BB, #EE7733, #33BBEE, #CC3311, #009988, #EE3377, #BBBBBB |
| muted_nine | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#332288;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#117733;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CC6677;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#88CCEE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#999933;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#882255;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#44AA99;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DDCC77;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#AA4499;margin-right:2px;"></span> | #332288, #117733, #CC6677, #88CCEE, #999933, #882255, #44AA99, #DDCC77, #AA4499 |
| nickel_five | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#648FFF;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FE6100;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#785EF0;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FFB000;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DC267F;margin-right:2px;"></span> | #648FFF, #FE6100, #785EF0, #FFB000, #DC267F |
| ito_seven | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#0072B2;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#D55E00;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#009E73;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CC79A7;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#56B4E9;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#E69F00;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#F0E442;margin-right:2px;"></span> | #0072B2, #D55E00, #009E73, #CC79A7, #56B4E9, #E69F00, #F0E442 |
| ibm_five | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#648FFF;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#785EF0;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DC267F;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FE6100;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FFB000;margin-right:2px;"></span> | #648FFF, #785EF0, #DC267F, #FE6100, #FFB000 |
| wong_eight | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#E69F00;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#56B4E9;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#009E73;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#F0E442;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#0072B2;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#D55E00;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CC79A7;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#000000;margin-right:2px;"></span> | #E69F00, #56B4E9, #009E73, #F0E442, #0072B2, #D55E00, #CC79A7, #000000 |
| tol_eight | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#332288;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#117733;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#44AA99;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#88CCEE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DDCC77;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#CC6677;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#AA4499;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#882255;margin-right:2px;"></span> | #332288, #117733, #44AA99, #88CCEE, #DDCC77, #CC6677, #AA4499, #882255 |
| zesty_four | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#F5793A;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#A95AA1;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#85C0F9;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#0F2080;margin-right:2px;"></span> | #F5793A, #A95AA1, #85C0F9, #0F2080 |
| retro_four | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#601A4A;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#EE442F;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#63ACBE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#F9F4EC;margin-right:2px;"></span> | #601A4A, #EE442F, #63ACBE, #F9F4EC |
| tableau_ten | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#4E79A7;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#F28E2B;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#E15759;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#76B7B2;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#59A14F;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#EDC948;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#B07AA1;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FF9DA7;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#9C755F;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#BAB0AC;margin-right:2px;"></span> | #4E79A7, #F28E2B, #E15759, #76B7B2, #59A14F, #EDC948, #B07AA1, #FF9DA7, #9C755F, #BAB0AC |
| glasbey_twelve | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#0000FF;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FF0000;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#00FF00;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#000033;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FF00B6;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#005300;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FFD300;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#009FFF;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#9A4D42;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#00FFBE;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#783FC1;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#1F9698;margin-right:2px;"></span> | #0000FF, #FF0000, #00FF00, #000033, #FF00B6, #005300, #FFD300, #009FFF, #9A4D42, #00FFBE, #783FC1, #1F9698 |
| viridis_eight | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#440154;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#46337E;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#365C8D;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#277F8E;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#1FA187;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#4AC16D;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#9FDA3A;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FDE725;margin-right:2px;"></span> | #440154, #46337E, #365C8D, #277F8E, #1FA187, #4AC16D, #9FDA3A, #FDE725 |
| cividis_eight | <span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#00204D;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#16396D;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#4B546C;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#6C6E72;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#8E8A79;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#B3A772;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#DBC761;margin-right:2px;"></span><span style="display:inline-block;width:14px;height:14px;border:1px solid #999;border-radius:2px;background:#FFEA46;margin-right:2px;"></span> | #00204D, #16396D, #4B546C, #6C6E72, #8E8A79, #B3A772, #DBC761, #FFEA46 |

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

### 1.1.3 (2026-02-24)
- Added `tableau_ten`, `glasbey_twelve`, `viridis_eight`, and `cividis_eight`.
- Added test coverage for new palette availability and expected sizes.
- Updated palette documentation/man pages and README palette table.

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

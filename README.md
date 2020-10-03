<p align="center">
    <img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/logo.png" alt="Logo" width="400">
    <p align="center">
        <a href="https://lbesson.mit-license.org/" alt="License">
            <img src="https://img.shields.io/badge/License-MIT-blue.svg">
        </a>
        <a href="https://github.com/jlsteenwyk/ggpubfigs/graphs/contributors" alt="Contributors">
            <img src="https://img.shields.io/github/contributors/jlsteenwyk/ggpubfigs">
        </a>
        <a href="https://twitter.com/intent/follow?screen_name=jlsteenwyk" alt="Author Twitter">
            <img src="https://img.shields.io/twitter/follow/jlsteenwyk?style=social&logo=twitter"
                alt="follow on Twitter">
        </a>
    </p>
</p>


**ggpubfigs** is a ggplot2 extension that helps create publication ready figures for the life sciences.<br />
Importantly, ggpubfigs implements themes and color palettes that are both aesthetically pleasing and color blind friendly.
<br /><br />

---

## Guide
[Install](#install)<br />
[Quick Start](#quick-start)<br />
[Color palettes](#color-palettes)<br />
[Themes](#themes)<br />
[FAQ](#faq)<br />
[Acknowledgements](#acknowledgements)<br />
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
# using the "ito_seven" color palette and simple_theme()
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("ito_seven")) + theme_big_simple()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/ito_big_simple.png" alt="ito_simple" width="400">
</p>
<br />

```R
# using the "bright_seven" color palette and theme_grid()
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("bright_seven")) + theme_grid()
```
<p align="center">
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/bright_grid.png" alt="bright_grid" width="400">
</p>
<br />

---
## Color palettes
Color palettes are all color blind friendly. Thus, your figures will be accessible to more people, which is inarguably better for your audience and you. <br /><br />
Color palettes are named using the following scheme: *identifier* (underscore) *number of colors in color palette*.<br /><br />
Currently, there are six color palettes to pick from.<br />
<p align="center"><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/friendly_pals.png" alt="friendly_pals" width="400"></p>

To use these color blind friendly color palettes, use the following command as an example for both discrete and continuous purposes:<br />

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
<br />



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


**ggpubfigs** is a collection of themes for ggplot2, which help create publication (or presentation) ready figures for the life sciences.
<br /><br />

---

## Guide
[Install](#install)<br />
[Color palettes](#color-palettes)<br />
[Themes](#themes)<br />
[FAQ](#faq)

---
## Install
```R
# execute this command only the first time you use ggpubfigs
devtools::install_github("JLSteenwyk/ggpubfigs")
# load ggpubfigs
library(ggpubfigs)
```

---
## Color palettes
Color palettes are all color blind friendly. Thus, your figures will be accessible to more people, which is inarguably better for your audience and you. <br /><br />
Color palettes are named using the following scheme: *identifier* (underscore) *number of colors in color palette*.<br /><br />
Currently, there are six color palettes to pick from.<br />
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/friendly_pals.png" alt="friendly_pals" width="400"></center>

To use these color blind friendly color palettes, use the following command as an example:<br />

```R
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = friendly_pal("contrast_three"))
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/contrast_three.png" alt="friendly_pals" width="400"></center>


<br />
Alternatively, create continuous color palettes for heatmaps or volcano plots.<br />

```R
pal <- friendly_pal("contrast_three", 50, type = "continuous")<br />
image(volcano, col = pal)
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/contrast_three_volcano.png" alt="friendly_pals" width="400"></center>


---
## Themes
### Publication-ready figures 
**theme_grid()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grid()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grid.png" alt="Grid" width="400"></center>
<br />

**theme_simple()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_simple()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/simple.png" alt="Simple" width="400"></center>
<br />

**theme_grey()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grey()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grey.png" alt="Grey" width="400"></center>
<br />

### Presentation-ready figures 
**theme_black()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_black()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/black.png" alt="Black" width="400"></center>
<br />

**theme_blue()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_blue()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/blue.png" alt="Blue" width="400"></center>
<br />

**theme_red()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_red()
```
<center><img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/red.png" alt="Red" width="400"></center>

---
## FAQ
**Can I submit color palettes or themes to be incorporated into ggpubfigs?**<br />
Yes! Submissions are encouraged, please feel free to contact me via  [twitter](https://twitter.com/jlsteenwyk) or from my [contact information](https://jlsteenwyk.com/contact.html). 
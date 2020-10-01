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
## Install and load
```R
# execute this command only the first time you use ggpubfigs
devtools::install_github("JLSteenwyk/ggpubfigs")

library(ggpubfigs)
```

---
## Publication-ready figures 
**theme_grid()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grid()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grid.png" alt="Grid" width="400">
<br />

**theme_simple()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_simple()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/simple.png" alt="Simple" width="400">
<br />

**theme_grey()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grey()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/grey.png" alt="Grey" width="400">
<br />

---
## Presentation-ready figures 
**theme_black()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_black()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/black.png" alt="Black" width="400">
<br />

**theme_blue()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_blue()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/blue.png" alt="Blue" width="400">
<br />

**theme_red()**<br />
```R
ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_red()
```
<img src="https://github.com/JLSteenwyk/ggpubfigs/blob/master/master/docs/_static/red.png" alt="Red" width="400">
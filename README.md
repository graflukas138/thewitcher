
<!-- README.md is generated from README.Rmd. Please edit that file -->

# thewitcher <img src="man/figures/logo.png" align="right" width="120" />

<!-- badges: start -->

[![cran
version](http://www.r-pkg.org/badges/version/thewitcher)](https://cran.r-project.org/package=thewitcher)
[![rstudio mirror per-month
downloads](http://cranlogs.r-pkg.org/badges/thewitcher)](https://github.com/metacran/cranlogs.app)
[![rstudio mirror total
downloads](http://cranlogs.r-pkg.org/badges/grand-total/thewitcher?color=yellowgreen)](https://github.com/metacran/cranlogs.app)
<!-- badges: end -->

This is a package designed to implement color palettes inspired by the
TV Show, book series and video games *The Witcher* into `R` and
`ggplot2`.  
The package draws some inspiration from the `gameofthrones`-package.  
Most color palettes are inspired by the 3rd installation of the video
games: *The Witcher III - Wild Hunt*

## Installation

From Github:

``` r
# install.packages("devtools")
devtools::install_github("graflukas138/thewitcher")
```

From CRAN (yet to be released):

``` r
install.packages("thewitcher")
```

## Palettes

`thewitcher` provides 30 different palettes. An overview can be viewed
with the `witcher_colors()` function:

``` r
library(thewitcher)

witcher_colors()
```

![](man/figures/README-unnamed-chunk-4-1.png)<!-- -->

# Usage

An example of usage for the `thewitcher` - color scales. The default
option is Geralt.

``` r
pal <- witcher(255, option = "Geralt")
image(volcano, col = pal)
```

![](man/figures/README-unnamed-chunk-5-1.png)<!-- -->

How about a plot that is inspired by a Witcher school?

``` r
pal <- witcher(255, option = "school_griffin")
image(volcano, col = pal)
```

![](man/figures/README-unnamed-chunk-6-1.png)<!-- -->

Or a monster?

``` r
pal <- witcher(255, option = "necrophage")
image(volcano, col = pal)
```

![](man/figures/README-unnamed-chunk-7-1.png)<!-- -->

Or a witcher sign?

``` r
pal <- witcher(255, option = "axi")
image(volcano, col = pal)
```

![](man/figures/README-unnamed-chunk-8-1.png)<!-- -->

## ggplot2

`thewitcher` provides color scales and functions to use with
`ggplot2`.  
If `ggplot2` is available you’ll have access to the
`scale_[colour|fill]_witcher()` functions:

``` r
ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
  geom_hex() + coord_fixed() +
  scale_fill_witcher(option="Geralt") + theme_bw()
```

![](man/figures/README-unnamed-chunk-10-1.png)<!-- -->

``` r
ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
  geom_hex() + coord_fixed() +
  scale_fill_witcher(option="Ciri") + theme_bw()
```

![](man/figures/README-unnamed-chunk-11-1.png)<!-- -->

``` r
ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
  geom_hex() + coord_fixed() +
  scale_fill_witcher(option="wildhunt") + theme_bw()
```

![](man/figures/README-unnamed-chunk-12-1.png)<!-- -->

``` r
ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
  geom_hex() + coord_fixed() +
  scale_fill_witcher(option="leshen") + theme_bw()
```

![](man/figures/README-unnamed-chunk-13-1.png)<!-- -->

*“Evil is evil. Lesser, greater, middling… Makes no difference. The
degree is arbitrary. The definition’s blurred. If I’m to choose between
one evil and another… I’d rather not choose at all.”* - Geralt of Rivia

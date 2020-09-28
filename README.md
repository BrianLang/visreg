## What is different?

Added a feature, `forcexvalues` to the `visreg` function, allowing the user to force certain values for the x-scale of a given visreg figure. This allows for creation of contrast tables directly from `visreg` with `visreg(fit, xvar, plot = FALSE, forcexvalues = 0:10)$fit`.

## Installation

To install the latest release version from CRAN:

```r
install.packages("visreg")
```

To install the latest development version from GitHub:

```r
remotes::install_github("brianlang/visreg_brian")
```

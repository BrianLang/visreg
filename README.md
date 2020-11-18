## This is a fork of visreg from 01.08.2020
It has been changed in a very specific way to allow for the addition of chosen x-values in the creation of visreg figures. This allows one to use visreg as means to gain estimates of specific contrasts. 

## What is different?

Added a feature, `forcexvalues` to the `visreg` function, allowing the user to force certain values for the x-scale of a given visreg figure. This allows for creation of contrast tables directly from `visreg` with `visreg(fit, xvar, plot = FALSE, forcexvalues = 0:10)$fit`.

## Installation

To install the latest release version from CRAN:

```r
install.packages("visreg")
```


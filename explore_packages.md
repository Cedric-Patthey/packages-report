explore\_packages.R
================
Cedric
2019-06-11

``` r
library(tidyverse)
```

    ## Registered S3 methods overwritten by 'ggplot2':
    ##   method         from 
    ##   [.quosures     rlang
    ##   c.quosures     rlang
    ##   print.quosures rlang

    ## -- Attaching packages ------------------------------------------------------ tidyverse 1.2.1 --

    ## v ggplot2 3.1.1     v purrr   0.3.2
    ## v tibble  2.1.3     v dplyr   0.8.1
    ## v tidyr   0.8.3     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.4.0

    ## -- Conflicts --------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
.libPaths()
```

    ## [1] "C:/Users/Cedric/Documents/R/win-library/3.6"
    ## [2] "C:/Program Files/R/R-3.6.0/library"

``` r
ipt<-installed.packages() %>% 
  as.tibble() %>%
  select(Package, LibPath, Version, Priority, Built)
```

    ## Warning: `as.tibble()` is deprecated, use `as_tibble()` (but mind the new semantics).
    ## This warning is displayed once per session.

``` r
ipt
```

    ## # A tibble: 122 x 5
    ##    Package    LibPath                                Version Priority Built
    ##    <chr>      <chr>                                  <chr>   <chr>    <chr>
    ##  1 askpass    C:/Users/Cedric/Documents/R/win-libra~ 1.1     <NA>     3.6.0
    ##  2 assertthat C:/Users/Cedric/Documents/R/win-libra~ 0.2.1   <NA>     3.6.0
    ##  3 backports  C:/Users/Cedric/Documents/R/win-libra~ 1.1.4   <NA>     3.6.0
    ##  4 base64enc  C:/Users/Cedric/Documents/R/win-libra~ 0.1-3   <NA>     3.6.0
    ##  5 BH         C:/Users/Cedric/Documents/R/win-libra~ 1.69.0~ <NA>     3.6.0
    ##  6 broom      C:/Users/Cedric/Documents/R/win-libra~ 0.5.2   <NA>     3.6.0
    ##  7 callr      C:/Users/Cedric/Documents/R/win-libra~ 3.2.0   <NA>     3.6.0
    ##  8 cellranger C:/Users/Cedric/Documents/R/win-libra~ 1.1.0   <NA>     3.6.0
    ##  9 cli        C:/Users/Cedric/Documents/R/win-libra~ 1.1.0   <NA>     3.6.0
    ## 10 clipr      C:/Users/Cedric/Documents/R/win-libra~ 0.6.0   <NA>     3.6.0
    ## # ... with 112 more rows

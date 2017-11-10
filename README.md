A reproducible example with roxygen2md issues when using Sexpr and noMd
================

Nothing to see here, just a couple of examples in which calling `roxygen2::roxygenize()` doesn't parse correctly documentation chunks in which `\Sexpr[]{}` is present, but works fine if we use `\Sexpr{}` instead (with no options). And also the `@noMd` tag only works if included at the end of the documentation chunk.

``` r
devtools::session_info()
```

    ## ─ Session info ──────────────────────────────────────────────────────────
    ##  setting  value                       
    ##  version  R version 3.4.2 (2017-09-28)
    ##  os       Ubuntu 16.04.3 LTS          
    ##  system   x86_64, linux-gnu           
    ##  ui       X11                         
    ##  language en_US                       
    ##  collate  en_US.UTF-8                 
    ##  tz       America/Los_Angeles         
    ##  date     2017-11-10                  
    ## 
    ## ─ Packages ──────────────────────────────────────────────────────────────
    ##  package     * version     date       source                            
    ##  assertthat    0.2.0       2017-04-11 CRAN (R 3.4.0)                    
    ##  backports     1.1.1       2017-09-25 CRAN (R 3.4.2)                    
    ##  cli           1.0.0       2017-11-10 Github (r-lib/cli@ab1c3aa)        
    ##  clisymbols    1.2.0       2017-05-21 CRAN (R 3.4.1)                    
    ##  crayon        1.3.4       2017-09-16 CRAN (R 3.4.1)                    
    ##  desc          1.1.1       2017-08-03 CRAN (R 3.4.1)                    
    ##  devtools      1.13.3.9000 2017-11-10 Github (hadley/devtools@25315a6)  
    ##  digest        0.6.12      2017-01-27 CRAN (R 3.4.0)                    
    ##  evaluate      0.10.1      2017-06-24 CRAN (R 3.4.1)                    
    ##  htmltools     0.3.6       2017-04-28 CRAN (R 3.4.0)                    
    ##  knitr         1.17        2017-08-10 CRAN (R 3.4.1)                    
    ##  magrittr      1.5         2014-11-22 CRAN (R 3.3.2)                    
    ##  memoise       1.1.0       2017-04-21 CRAN (R 3.4.0)                    
    ##  pkgbuild      0.0.0.9000  2017-11-10 Github (r-lib/pkgbuild@a70858f)   
    ##  pkgload       0.0.0.9000  2017-11-10 Github (r-lib/pkgload@70eaef8)    
    ##  R6            2.2.2       2017-06-17 CRAN (R 3.4.1)                    
    ##  Rcpp          0.12.13     2017-09-28 CRAN (R 3.4.2)                    
    ##  rlang         0.1.4       2017-11-05 CRAN (R 3.4.2)                    
    ##  rmarkdown     1.6         2017-06-15 CRAN (R 3.4.1)                    
    ##  rprojroot     1.2         2017-01-16 CRAN (R 3.3.2)                    
    ##  sessioninfo   1.0.1.9000  2017-11-10 Github (r-lib/sessioninfo@c871d01)
    ##  stringi       1.1.5       2017-04-07 CRAN (R 3.4.0)                    
    ##  stringr       1.2.0       2017-02-18 CRAN (R 3.4.0)                    
    ##  testthat      1.0.2       2016-04-23 CRAN (R 3.4.0)                    
    ##  usethis       1.0.0.9000  2017-11-10 Github (r-lib/usethis@8b7c89a)    
    ##  withr         2.1.0       2017-11-01 CRAN (R 3.4.2)                    
    ##  yaml          2.1.14      2016-11-12 CRAN (R 3.3.2)

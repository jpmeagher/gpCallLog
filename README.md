
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gpCallLog

<!-- badges: start -->
<!-- badges: end -->

The goal of gpCallLog is to share anonymised data pertaining to the
incoming calls for a rural Irish GP practise.

## Installation

You can install the development version of gpCallLog from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jpmeagher/gpCallLog")
```

## Example

Accessing the data is straightforward:

``` r
library(gpCallLog)
head(inbound_calls_2021)
#>                     t   status duration total_duration        from          to
#> 1 2021-01-04 09:06:25 ANSWERED      112            129  caller_996 Reception 1
#> 2 2021-01-04 09:08:54 ANSWERED        5             25 caller_1020 Reception 1
#> 3 2021-01-04 09:10:24 ANSWERED       86             96 caller_1020 Reception 1
#> 4 2021-01-04 09:19:01 ANSWERED      129            139 caller_1374 Reception 1
#> 5 2021-01-04 09:25:00 ANSWERED      152            158 caller_2298 Reception 2
#> 6 2021-01-04 09:33:02 ANSWERED       57             70 caller_1533 Reception 2
```

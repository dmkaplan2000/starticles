[![CRAN
status](https://www.r-pkg.org/badges/version/starticles)](https://CRAN.R-project.org/package=starticles)
[![Downloads from the RStudio CRAN
mirror](https://cranlogs.r-pkg.org/badges/starticles)](https://cran.r-project.org/package=starticles)

# starticles

This package provides a generic, publisher-independent Rmarkdown template for writing scientific papers and reports in Rmarkdown.

## Installation

The latest version of this package can be installed from Github executing the
following command in R:

```r
remotes::install_github("dmkaplan2000/starticles",build_vignettes=TRUE)
```

## Use

You access the template by one of two approaches:

1) Via Rstudio using `File` $\rightarrow$ `New file` $\rightarrow$ `R Markdown...` $\rightarrow$ `From Template` and choosing the `Generic scientific article {starticles}` template.
2) Via with command line with:

```r
rmarkdown::draft("MYARTICLENAME.Rmd","generic_article","starticles",edit=FALSE)
```

The latter approach will create a directory named `MYARTICLENAME` within which you will find the Rmarkdown file `MYARTICLENAME.Rmd`. This is the file that should be edited to create your article.

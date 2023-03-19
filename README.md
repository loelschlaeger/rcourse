This repository is a collection of materials for `R` courses at Bielefeld University. Get access via executing the following lines in `R`:

```r
install.packages("remotes")
remotes::install_github("loelschlaeger/rcourse")
library(rcourse)
```

If this fails and you are on Windows, you can try:

```r
url <- "https://github.com/loelschlaeger/rcourse/raw/master/rcourse.zip"
destfile <- "rcourse.zip"
download.file(url, destfile)
install.packages(destfile)
install.packages(c("cli", "learnr", "utils"))
library("rcourse")
```

Current topics are:

|                         | Description                                            | `id`                 | 
|:------------------------|:-------------------------------------------------------|:---------------------|
| **Good Practices**      | What are good practices in R to follow?                | `1`                  |
| **Data Manipulation**   | How to apply the {dplyr} package for data preparation? | `2`                  |
| **Data Visualization**  | How to visualize data with the {ggplot2} package?      | `3`                  |

To select a course, run:

```r
select()
```

To open the course slides, run:

```r
slides()
```

To start the course exercises, run:

```r
practicals()
```

Sources:

- Wickham and Grolemund (2020): [R for Data Science](https://r4ds.had.co.nz/)
- Healy (2019): [Data Visualization: A practical introduction](https://socviz.co/)
- Wickham (2016): [ggplot2: elegant graphics for data analysis](https://ggplot2-book.org/)
- Wilkinson (2005): The Grammar of Graphics
- [Tufte](https://en.wikipedia.org/wiki/Edward_Tufte) (1983): The Visual Display of Quantitative Information

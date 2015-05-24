
require(knitr)
library(reshape2)
library(data.table)
#you should set your working directory here
setwd("~/Desktop/Getting_and_Cleaning_Data")

knit("run_analysis.Rmd", encoding="UTF-8")
knit("forCodebook.Rmd",output="codebook.md", encoding="UTF-8")
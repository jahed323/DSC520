# Assignment: ASSIGNMENT 3.2.2
# Name: Rahman, Jahedur
# Date: 2021-12-15

## Set the working directory to the root of your DSC 520 directory
getwd()
setwd("~/GitHub/dsc520")

## Load the `data/acs-14-1yr-s0201.csv` to 'acs_df'
## Examine the structure of `acs_df` using `str()`
acs_df <- read.csv("data/acs-14-1yr-s0201.csv")
str(acs_df)
nrow(acs_df)
ncol(acs_df)

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())
## Created a histogram of the `HSDegree` variable using `geom_histogram()`
    # 1. Set a bin size for the Histogram.
    # 2. Include a Title and appropriate X/Y axis labels on your Histogram Plot.
## Used 50 bins
ggplot(acs_df, aes(HSDegree)) + geom_histogram(bins = 50) + ggtitle("HSDegree") + xlab("Value") + ylab("Frequency")

## Added a normal curve to the Histogram.
ggplot(acs_df, aes(HSDegree)) + geom_histogram(aes(y = ..density..), bins = 50) + ggtitle("HSDegree") + xlab("Value") + ylab("Frequency") +  stat_function(fun = dnorm, args = list(mean = mean(acs_df$HSDegree, na.rm = TRUE), sd = sd(acs_df$HSDegree, na.rm = TRUE)))

## Created a Probability Plot of the HSDegree variable.
qplot(sample = acs_df$HSDegree, stat="qq")

## Quantify normality with numbers using the stat.desc() function.
library(pastecs)
stat.desc(acs_df$HSDegree, basic = FALSE, norm = TRUE)

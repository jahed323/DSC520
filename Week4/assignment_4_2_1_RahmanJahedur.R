# Assignment: ASSIGNMENT 4.2.1
# Name: Rahman, Jahedur
# Date: 2022-01-04

## Check your current working directory using `getwd()`
getwd()

## If the current directory does not contain the `data` directory, set the
## working directory to project root folder (the folder should contain the `data` directory
## Use `setwd()` if needed
setwd("C:/Users/jahed/OneDrive/Documents/GitHub/dsc520")

## Load the file `data/scores.csv` to `scores_df1`
## Examine the structure of `scores_df1` using `str()`
scores_df <- read.csv('data/scores.csv')
str(scores_df)

## Create one variable to hold a subset of your data set that contains only the Regular Section 
## and one variable for the Sports Section.
regular_df <- scores_df[scores_df$Section == 'Regular',]
sports_df <- scores_df[scores_df$Section == 'Sports',]
str(regular_df)
str(sports_df)

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Use the Plot function to plot each Sections scores and the number of students achieving that score. 
## Use additional Plot Arguments to label the graph and give each axis an appropriate label.
ggplot(regular_df, aes(x=Score, y=Count)) + geom_point() + ggtitle("Regular Section") + xlab("Scores") + ylab("Number of Students")
ggplot(sports_df, aes(x=Score, y=Count)) + geom_point() + ggtitle("Sports Section") + xlab("Scores") + ylab("Number of Students")

## Calculate the means
sum_scores <- function(x, y)
{
  x*y
}

regular_sum_scores <- mapply(sum_scores, regular_df$Score, regular_df$Count)
regular_mean <- sum(regular_sum_scores)/sum(regular_df$Count)

sports_sum_scores <- mapply(sum_scores, sports_df$Score, sports_df$Count)
sports_mean <- sum(sports_sum_scores)/sum(sports_df$Count)

## Calculate the medians
regular_median <- with(regular_df, median(Score[Count != 1]))
sports_median <- with(sports_df, median(Score[Count != 1]))

## Set the modes
regular_mode <- 350
sports_mode <- '285, 335'

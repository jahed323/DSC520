# Assignment: ASSIGNMENT 4.2.2
# Name: Rahman, Jahedur
# Date: 2022-01-05

## Check your current working directory using `getwd()`
getwd()

## If the current directory does not contain the `data` directory, set the
## working directory to project root folder (the folder should contain the `data` directory
## Use `setwd()` if needed
setwd("C:/Users/jahed/OneDrive/Documents/GitHub/dsc520")

## Load the `readxl` library
library(readxl)

## From the `data/week-7-housing.xlsx`
## Assign the data to the `housing_dataset_df`
## The header is in the second row, so make sure to skip the first row
## Examine the structure of `housing_dataset_df` using `str()`
housing_dataset_df <- read_excel('data/week-7-housing.xlsx')
str(housing_dataset_df)

## Use the apply function on a variable in your dataset
sale_price <- housing_dataset_df[2]
sale_price_mean <- apply(sale_price, 2, mean)

## Use the aggregate function on a variable in your dataset
zip5 <- housing_dataset_df[8]
sale_price_zip_mean <- aggregate(sale_price, zip5, mean)

## Use the plyr function on a variable in your dataset - more specifically, 
## I want to see you split some data, perform a modification to the data, and then bring it back together
library(plyr)

## Check if there are any blank ctyname.
any(is.na(housing_dataset_df$ctyname))

## Fill in ctyname based on city names found online using zip code(zip5)
housing_dataset_df$ctyname[housing_dataset_df$zip5 == 98052 & is.na(housing_dataset_df$ctyname)] <- 'REDMOND'
housing_dataset_df$ctyname[housing_dataset_df$zip5 == 98053 & is.na(housing_dataset_df$ctyname)] <- 'REDMOND'
housing_dataset_df$ctyname[housing_dataset_df$zip5 == 98059 & is.na(housing_dataset_df$ctyname)] <- 'RENTON'
housing_dataset_df$ctyname[housing_dataset_df$zip5 == 98074 & is.na(housing_dataset_df$ctyname)] <- 'SAMMAMISH'

## Total square feet lot for each zip code
sqftlot_zip <- ddply(housing_dataset_df, .(zip5), summarise, 'sq ft lot' = sum(sq_ft_lot))
## Total square feet lot for each city name
sqftlot_ctyname <- ddply(housing_dataset_df, .(ctyname), summarise, 'sq ft lot' = sum(sq_ft_lot))

## Check distributions of the data
## Identify if there are any outliers
library(ggplot2)
theme_set(theme_minimal())

ggplot(housing_dataset_df, aes(sq_ft_lot)) + geom_histogram(bins = 50) + ggtitle("sq_ft_lot") + xlab("Value") + ylab("Frequency")

max(housing_dataset_df$sq_ft_lot)

## Create at least 2 new variables
housing_dataset_df$full_address <- paste0(housing_dataset_df$addr_full, ', ', housing_dataset_df$ctyname, ', ', 'WA ', housing_dataset_df$zip5)
housing_dataset_df$house_age <- 2022 - housing_dataset_df$year_built

# Assignment: ASSIGNMENT 5.2.1
# Name: Rahman, Jahedur
# Date: 2022-01-12

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
## Examine the structure of `housing_dataset_df` using `str()`
housing_dataset_df <- read_excel('data/week-7-housing.xlsx')
str(housing_dataset_df)
housing_dataset_df$`Sale Price`
## Using the dplyr package, use the 6 different operations to 
## analyze/transform the data - GroupBy, Summarize, Mutate, Filter, 
## Select, and Arrange - Remember this isn't just modifying data, 
## you are learning about your data also - so play around and start 
## to understand your dataset in more detail
library(dplyr)

## GroupBy
housing_dataset_df %>% 
  group_by(zip5) %>% 
  summarize(AvgSalePrice=mean(`Sale Price`))

## Summarize
housing_dataset_df %>% 
  summarize(AvgSalePrice=mean(`Sale Price`),
            MedianSalePrice=median(`Sale Price`))

## Mutate
housing_dataset_df %>% 
  mutate(`Sale Price`/square_feet_total_living)

## Filter
housing_dataset_df %>% 
  filter(zip5 == 98074)

## Select
housing_dataset_df %>% 
  select(`Sale Price`, square_feet_total_living) %>% 
  mutate(`Sale Price`/square_feet_total_living)

## Arrange
housing_dataset_df %>% 
  group_by(zip5) %>% 
  summarize(AvgSalePrice=mean(`Sale Price`),
            MedianSalePrice=median(`Sale Price`)) %>% 
  arrange(AvgSalePrice)

## Using the purrr package - perform 2 functions on your dataset. 
## You could use zip_n, keep, discard, compact, etc.
library(purrr)

housing_dataset_df$bedrooms %>% 
  keep(housing_dataset_df$bedrooms >= 4)

housing_dataset_df$bedrooms %>% 
  discard(housing_dataset_df$bedrooms < 4)

## Use the cbind and rbind function on your dataset
saleprice <- housing_dataset_df$`Sale Price`
addrfull <- housing_dataset_df$addr_full
zip <- housing_dataset_df$zip5

cbind(addrfull, zip, saleprice)
rbind(addrfull, zip, saleprice)

## Split a string, then concatenate the results back together
library(stringr)

splitstring <- str_split(housing_dataset_df$addr_full[1], " ", simplify = TRUE)
splitstring[1]
splitstring[2]
splitstring[3]
splitstring[4]

concatenated <- paste(splitstring[1], splitstring[2], splitstring[3], splitstring[4])

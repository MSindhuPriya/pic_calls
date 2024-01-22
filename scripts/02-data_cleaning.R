#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####

# read in the raw data
raw_data <- read_csv("inputs/data/unedited_data.csv")

# clean up the names in the raw data
cleaned_pic_data <- clean_names(raw_data)
#check to make sure that the names are cleaned to our liking
names(cleaned_pic_data)

# select the event_type and event_year variables which are the only ones
# we will be using for our analysis
cleaned_pic_data <-
  cleaned_pic_data |>
  select(
    event_type,
    event_year
  )

# check to make sure that the appropriate variables are selected
head(cleaned_pic_data)

# omit any data that is left blank
analysis_data <- na.omit(cleaned_pic_data)

# one final check for our cleaned data
head(analysis_data)

#### Save data ####
write_csv(analysis_data, "outputs/data/analysis_data.csv")

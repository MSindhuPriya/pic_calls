#### Preamble ####
# Purpose: Simulates data for attended person in crisis calls in Toronto between the year 2014 and 2024
# Author: Sindhu Priya Mallavarapu
# Date: 22 January 2024
# Contact: sindhupriya.mallavarapu@mail.utoronto.ca

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Simulate data ####
# setting seed to ensure reproducibility
set.seed(144)
# creating a data frame
simulated_pic_data <-
  (tibble(
    # creating a variable for the type of crisis event attended
    Event = sample(
      # list of the types of events
      x = c("Suicide-related", "Overdose", "Other"), 
      # sample 550 events from the list
      size = 550,
      # sample with replacement
      replace = TRUE
    ),
    # creating a variable for the year the calls were attended
    Year = 
      # getting 50 samples for each year between 2014 and 2024
      rep(c(2014:2024), 50)
  ))
# looking at the head of the simulated person in crisis data
head(simulated_pic_data)




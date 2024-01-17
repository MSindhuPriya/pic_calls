#### Preamble ####
# Purpose: Downloads and saves the data from 'opendatatoronto'
# Author: Sindhu Priya Mallavarapu
# Date: 2021-01-17
# Contact: sindhupriya.mallavarapu@mail.utoronto.ca



#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
# get the package that contains the data that we want.
package<-show_package("persons-in-crisis-calls-for-service-attended")
package

# check what files are part of the package so that we can download the right one.
resources <- list_package_resources("persons-in-crisis-calls-for-service-attended")
resources

# get the right file by filtering for the row that our file is in.
raw_data <- get_resource(filter(resources, row_number()==3))
raw_data
#### Save data ####
# write the raw data into the raw_data.csv file in the inputs/data folder
write_csv(raw_data, "inputs/data/raw_data.csv") 

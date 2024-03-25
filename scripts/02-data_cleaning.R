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
library(nflverse)

#### Clean data ####

cleaned_data <-
  load_player_stats(seasons = 2023) |> 
  filter(season_type == "REG" & position == "QB" & week >= 10)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/cleaned_data.csv")

#### Preamble ####
# Purpose: Cleans the raw data, only having Quaterbacks data that are before week 9 of season 2023.
# Author: Sean Liu
# Date: 27 March 2024
# Contact: yuhsiang.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: install the "nflverse" package 


#### Workspace setup ####
library(tidyverse)
library(nflverse)

#### Clean data ####

cleaned_data <-
  load_player_stats(seasons = 2023) |> 
  filter(season_type == "REG" & position == "QB" & week <= 9)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/cleaned_data.csv")

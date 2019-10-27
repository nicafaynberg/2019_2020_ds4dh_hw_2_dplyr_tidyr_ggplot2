## task 2.1 dog names

library("tidyverse")

dog_names <- ...("https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv")

dog_names %>% 
  ...
  ggplot(...) +
  ... +
  scale_fill_brewer(palette="Dark2")

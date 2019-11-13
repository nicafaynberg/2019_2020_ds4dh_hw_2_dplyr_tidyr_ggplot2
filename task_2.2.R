## task 2.2 dog names
library(tidyverse)
dog_names <- read_csv("https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv")
dog_names %>% 
  filter(sex!="Unknown") %>% 
  count(sex, age) %>% 
  pivot_wider(names_from = "sex", values_from = "n") -> final_dogs
final_dogs

final_dogs %>% 
  count(b = sum(Male), a = sum(Female)) -> sum_dogs
sum_dogs %>% 
  select(-n) -> sum_of_dogs
final_dogs %>% 
  select(-age) -> sex_of_dogs

merge(sum_of_dogs, sex_of_dogs) -> merged_dogs
female_share = merged_dogs$Female / merged_dogs$a
male_share = merged_dogs$Male / merged_dogs$b
final <- tibble(final_dogs$age, female_share, male_share)
final

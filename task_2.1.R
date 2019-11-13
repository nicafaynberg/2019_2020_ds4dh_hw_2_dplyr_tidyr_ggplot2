## task 2.1 dog names
library(tidyverse)
library(plotly)
dog_names <- read_csv("https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv")
dog_names %>% 
  select(name, sex) %>% 
  count(name, sex) %>% 
  filter(sex!="Unknown") %>%
  arrange(desc(n)) %>% 
  group_by(sex) %>% 
  slice(1:20) %>% 
  ggplot(aes(fct_reorder(name, n), n, label = (name), fill = sex)) +
  facet_wrap(~sex, scales = "free") +
  geom_col() +
  labs(x = "", y = "count") +
  coord_flip() +
  scale_fill_brewer(palette="Dark2")

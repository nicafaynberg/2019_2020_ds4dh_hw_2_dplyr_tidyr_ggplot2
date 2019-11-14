## task 2.3 dog names
library(tidyverse)
library(readxl)
path1 <- "/Users/veronikafajnberg/Downloads/seattle_public_library_checkouts.xlsx"
path1 %>% 
  excel_sheets() %>% 
  set_names() %>% 
  map(read_excel, path = path1) -> total_table
total_table
bind_rows(total_table) -> binded_table
binded_table %>% 
  select(name, type, n)%>%
  group_by(name, type) %>% 
  summarise(n = sum(n)) %>% 
  group_by() %>% 
  arrange(desc(n)) %>% 
  slice(1:100) %>% 
  ggplot(aes(fct_reorder(name, n), n, label = name, fill = type)) +
  geom_col() +
  labs(x = "", y = "count", title = "Most popular physical item checkouts from Seattle Public Library (2005-2019)",
       caption = "https://data.seattle.gov/dataset/Checkouts-by-Title-Physical-Items-/3h5r-qv5w") +
  coord_flip()

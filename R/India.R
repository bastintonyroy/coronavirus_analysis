library(tidyverse)
library(lubridate)
data <- read_csv("data/coronavirus_data_2020-09-21.csv")
data %>% 
  filter(countriesAndTerritories == "India") %>% 
  mutate(Date = dmy(dateRep)) %>% 
  ggplot(aes(x = Date, y = cases)) +
  geom_line()
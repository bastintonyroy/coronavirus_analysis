library(tidyverse)
library(lubridate)
data <- read_csv("data/coronavirus_data_2020-09-21.csv")

data %>% 
  filter(countriesAndTerritories == "Australia") %>% 
  mutate(dateRep = dmy(dateRep)) %>% 
  ggplot(aes(x = dateRep, y = cases)) +
  geom_line()

data %>% 
  filter(countriesAndTerritories %in% c("Australia","New_Zealand")) %>% 
  mutate(dateRep = dmy(dateRep)) %>% 
  ggplot(aes(x = dateRep, y = cases)) +
  geom_line(aes(col = countriesAndTerritories))

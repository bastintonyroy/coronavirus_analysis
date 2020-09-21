library(tidyverse)
library(lubridate)
data <- read_csv("data/coronavirus_data_2020-09-21.csv")

data %>% 
  filter(countriesAndTerritories == "India") %>% 
  mutate(Date = dmy(dateRep)) %>% 
  ggplot(aes(x = Date, y = cases)) +
  geom_line()

# Comparing number of cases between different countries
data %>% 
  filter(countriesAndTerritories %in% c("Australia","India", "Brazil", "United_States_of_America")) %>% 
  mutate(Date = dmy(dateRep)) %>% 
  ggplot(aes(x = Date, y = cases)) +
  geom_line(aes(col = countriesAndTerritories))

library(tidyverse)
data <- read.csv("https://opendata.ecdc.europa.eu/covid19/casedistribution/csv", na.strings = "", fileEncoding = "UTF-8-BOM")
write_csv(data, paste0("data/coronavirus_data_",Sys.Date(),".csv"))

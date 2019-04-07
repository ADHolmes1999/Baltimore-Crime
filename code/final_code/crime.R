install.packages("tidyverse")
install.packages("janitor")
install.packages("lubridate")
library(tidyverse)
library(lubridate)
library(janitor)

crime <- read_csv("data/tidy_data/BPD_Part_1_Victim_Based_Crime_Data 2.csv")%>%
  clean_names()
crime
ggplot(data = crime, aes()     summarize(n = n())) + geom_bar(stat="identity")


p1 <- crime %>%
  group_by(district) %>%
  summarize(n = n()) %>%
  ggplot(data = crime, aes(crime_date, district) + geom_bar(stat="identity"))
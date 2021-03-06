install.packages("tidyverse")
library(tidyverse)
install.packages("here")
library(here)
library(lubridate)
library(dplyr)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
library(ggplot2)
read_csv("number-of-people-with-and-without-electricity-access.csv")
p <- read_csv("number-of-people-with-and-without-electricity-access.csv")
str(p)
skim_without_charts(p)
head(p)
glimpse(p)
clean_names(p)
p <- rename(p,Country_name=Entity)

p <- p %>% mutate(Total_population=`Number of people without access to electricity`+`Number of people with access to electricity`)

q <- p %>% mutate(Pct_of_population_having_access_to_electricity=(`Number of people with access to electricity`/Total_population)*100)

print(q)
colnames(p)
colnames(q)
nrow(p)  
dim(p)  
head(p) 
str(p)
str(q)
summary(p)
summary(q)

p %>% select(-`Number of people with access to electricity`)
p %>% arrange(Country_name)
p %>% arrange(-Year)
p2 <- p %>% arrange(-Year)
p %>% arrange(-`Number of people without access to electricity`)
p3 <- p %>% arrange(-`Number of people without access to electricity`)
drop_na(p)
p4 <- drop_na(p)
p %>% group_by(Country_name) %>% drop_na() %>% summarise(mean_Number_of_people_without_access_to_electricity = mean(`Number of people without access to electricity`))
p5 <- p %>% group_by(Country_name) %>% drop_na() %>% summarise(mean_Number_of_people_without_access_to_electricity = mean(`Number of people without access to electricity`))
p %>% 
  group_by(Country_name) %>% 
  drop_na() %>% 
  summarise(max_Number_of_people_without_access_to_electricity = max(`Number of people without access to electricity`))
p6 <- p %>% 
  group_by(Country_name) %>% 
  drop_na() %>% 
  summarise(max_Number_of_people_without_access_to_electricity = max(`Number of people without access to electricity`))
p %>% filter(Country_name == 'India', Year == '2016')
p7 <- p %>% filter(Country_name == 'India')

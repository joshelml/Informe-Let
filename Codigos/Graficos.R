library(ggplot2)
library(dplyr)
library(gapminder)
library(gghighlight)
require(tidyverse)
library(countrycode)

sport = read_delim('sport.csv')

sport %>% 
  ggplot(aes(x = Sport, y = Cases)) +
  geom_col(fill = "pink") +
  theme_minimal() +
  ggtitle("Total ADRVs-Top 10 sports")+
       ylab("Sports")+
       xlab( NULL)


outcomes = read_delim('outcomes.csv')

outcomes %>% 
  ggplot(aes(x = samples, y = cases)) +
  geom_col(fill = "pink") +
  theme_minimal() +
  ggtitle("Outcomes by AAF")+
  ylab('Cases')+
  xlab( NULL)

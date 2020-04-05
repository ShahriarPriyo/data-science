?dplyr
install.packages("dplyr")
library(dplyr)

library(gapminder)
View(gapminder)
head(gapminder)

library(ggplot2)
library(tidyverse)

ggplot(data = gapminder)+
  geom_point(mapping = aes(x=year ,y=lifeExp))

ggplot(data = gapminder)+
  geom_bar(mapping = (x=lifeExp))

view(gapminder)

select(gapminder,country)

filter(gapminder, country == "Afghanistan")

gapminder %>% mean() %>% log()

summarise(gapminder)

sum(3,2) %>% mean() %>% log()


gapminder %>% 
  select(country,year) %>%
  filter(year == "1952")

library(dplyr)
library(gapminder)

head(gapminder)

gapminder %>% 
  summarise(minimum = min(pop),
            maximum = max(pop),
            average = mean(pop))
gapminder %>% 
  group_by(continent,country) %>%
  summarise(minimum = min(lifeExp),
            maximum = max(lifeExp),
            maximum2 = max(gdpPercap))

# read and write data into R
write.table(gapminder,"E:/javascript lessons/gapminder.txt", sep = "|" , quote = F , row.names = F)

x = read.table("E:/javascript lessons/gapminder.txt", sep = "|" ,header = T)

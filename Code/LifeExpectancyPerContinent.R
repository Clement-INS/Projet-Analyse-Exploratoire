install.packages("tidyverse", dependencies = TRUE)
# library(tidyverse)
library(ggplot2)
library(dplyr)

lifeExpectancy <- read.csv("./Life_Expectancy_00_15.csv", sep = ",")
a = lifeExpectancy %>% group_by(Year, Continent) %>% summarise(mean_life = mean(Life_Expectancy))
ggplot (a, aes(factor(Year), mean_life, fill=Continent, group=Continent, color=Continent)) + geom_line()

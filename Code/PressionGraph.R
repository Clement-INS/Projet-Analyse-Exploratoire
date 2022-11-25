install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)
library(ggplot2)
getwd()
lifeExpectancy <- read.csv("./Life_Expectancy_00_15.csv", sep = ",")
# meteo = subset(meteo, temperature != -50)
# a = meteo[order(meteo$temperature), ]

ggplot(lifeExpectancy, aes(x=GDP_per_capita, y=Health_expenditure)) +  geom_bin2d(bins = 70) +
  scale_fill_continuous(type = "viridis") +
  theme_bw()

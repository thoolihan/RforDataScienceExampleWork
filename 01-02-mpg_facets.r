library(tidyverse)

ggplot(data = ggplot2::mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  stat_density2d(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
 
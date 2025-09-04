library(tidyverse)


g1 <- ggplot(ggplot2::mpg) 
g1

g2 <- ggplot2::mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy))
g2

g3 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = cyl, y = hwy))
g3

g3 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = drv, y = hwy))
g3

g4 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = cyl, y = hwy, color = drv))
g4

g5 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
g5

g6 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cyl))
g6

g7 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cyl, shape = drv))
g7
library(tidyverse)

# what does ggplot do with whole tibble
g1 <- ggplot(ggplot2::mpg) 
g1

# plot displacement vs highway mpg
g2 <- ggplot2::mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy))
g2

# change x to cylinders
g3 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = cyl, y = hwy))
g3

# change x to drivetrain
g3 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = drv, y = hwy))
g3

# add color
g4 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = cyl, y = hwy, color = drv))
g4

# color by class
g5 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
g5

# add size
g6 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cyl))
g6

# max mapping
g7 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cyl, shape = drv))
g7

# fixed color
g7 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, shape = drv), color = "blue")
g7

# map continuous variable to color
g8 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, shape = drv, color = displ))
g8

# same var to multiple aesthetics
g8 <- mpg |>
  ggplot() + 
  geom_point(mapping = aes(x = displ, y = hwy, size = displ, shape = drv, color = displ))
g8
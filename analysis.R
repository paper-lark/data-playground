library(tidyverse)
?mpg
?diamonds

# 2. Data visualisation

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), position = position_jitter(width = 0))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
  facet_wrap(~class, nrow = 2)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(linetype = drv), se = FALSE)


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = after_stat(round(prop * 100)), group = 1))


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = color), position = "fill")

ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
  )

ggplot(data = diamonds) +
  geom_pointrange(
    mapping = aes(x = cut, y = depth),
    stat = "summary",
    fun.min = min,
    fun.max = max,
    fun = median
  )

ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = drv, y = hwy, color = class))

ggplot(mpg, aes(x = factor(1), fill = drv)) +
  geom_bar() +
  coord_polar(theta = "y")

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point() +
  geom_abline() +
  coord_fixed()

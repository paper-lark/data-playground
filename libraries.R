install.packages("tidyverse")
install.packages(c("nycflights13", "gapminder", "Lahman"))

install.packages(c("styler", "lintr"))

lintr::use_lintr(type = "tidyverse")
lintr::lint_dir()
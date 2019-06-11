library(tidyverse)

.libPaths()

ipt<-installed.packages() %>% 
  as.tibble() %>%
  select(Package, LibPath, Version, Priority, Built)
ipt

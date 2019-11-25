library(readxl)
library(dplyr)

obyvatele <- read_excel("Informativní_pocet_občanů_ČR_k_1_1_2019.xls", skip=5)

obyvatele <- obyvatele %>%
  select(obec=4,obyv15=10)

obyvatele <- obyvatele %>%
  group_by(obec) %>%
  summarise(obvyv15=sum(obyv15))

write.csv(obyvatele, "obyvatele.csv")

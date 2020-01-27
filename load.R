library(tidyverse)
library(lubridate)

library(janitor)
library(naniar)

library(helpers)

offices <- read_csv(
    "data/source/Data on the Official Language obligations of federal offices as of 2018-03-31.csv",
    locale = readr::locale(encoding = "ISO-8859-1")
  ) %>%
  clean_names() %>%
  replace_with_na_all(~.x == "N/A")


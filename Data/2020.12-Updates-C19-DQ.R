#! R
# @(#) 2020.12-Updates-C19-DQ.R
# Last-edited: Sun 2020.12.27.1914  -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Mon 2020.12.21.2023  -- Danny Quah (me@DannyQuah.com)
#    First draft: R script to update talking points COVID-19-2020.06.md via Rami Krispin's package https://ramikrispin.github.io/coronavirus/
# ----------------------------------------------------------------
library(tidyverse) 
remotes::install_github("joachim-gassen/tidycovid19")
library(tidycovid19)
library(data.table)
library(zoo)

# Daily new cases, moving average over 7 days
# Modified from https://github.com/joachim-gassen/tidycovid19
theDT <- setDT(download_merged_data(cached=TRUE, silent=TRUE))
theDT %>%
  filter(iso3c == "GBR") %>%
  mutate(
    new_cases = confirmed - lag(confirmed),
    ave_new_cases = rollmean(new_cases, 7, na.pad=TRUE, align="right")
  ) %>%
  filter(!is.na(new_cases), !is.na(ave_new_cases)) %>%
  ggplot(aes(x = date)) +
  geom_bar(aes(y = new_cases), stat = "identity", fill = "lightblue") +
  geom_line(aes(y = ave_new_cases), color ="red") +
  theme_minimal()


# eof 2020.12-Updates-C19-DQ.R


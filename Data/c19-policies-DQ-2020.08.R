#! R
# @(#) c19-policies-DQ-2020.08.R
# Last-edited: Sun 2020.08.02.2042  -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Sun 2020.08.02.1745  -- Danny Quah (me@DannyQuah.com)
#    First draft: R script to study COVID19 outcomes and national 
#    policies
# ----------------------------------------------------------------
library(tidyverse)
library(lubridate)
library(remotes)

#                              # Joachim Gassen's github libraries
#                              # Uncomment to install
# remotes::install_github("joachim-gassen/tidycovid19")
library(tidycovid19)
library(ggrepel)
library(gghighlight)
library(zoo)


#
merged <- download_merged_data(silent=TRUE, cached=TRUE)
tidycovid19_variable_definitions %>%
  select(var_name, var_def) %>%
  kable() %>% 
  kable_styling()


# eof c19-policies-DQ-2020.08.R


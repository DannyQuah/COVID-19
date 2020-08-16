#! /usr/bin/R
# @(#) c19-policies-DQ-2020.08.R
# Last-edited: Sun 2020.08.16.2139  -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Sun 2020.08.16.1849 
#  % Sun 2020.08.02.1745  -- Danny Quah (me@DannyQuah.com)
#    First draft: R script to study COVID19 outcomes and national 
#    policies
# ----------------------------------------------------------------
library(tidyverse)
library(lubridate)
library(remotes)
library(knitr)
library(kableExtra)

#                              # Joachim Gassen's github libraries
#                              # Uncomment to install
# remotes::install_github("joachim-gassen/tidycovid19")
library(tidycovid19)
library(ggrepel)
library(gghighlight)
library(zoo)


# Take a look at the data #######################################
#
merged <- download_merged_data(silent=TRUE, cached=TRUE)
tidycovid19_variable_definitions %>%
  select(var_name, var_def) %>%
  kable() %>% 
  kable_styling()

# ACAPS data seem to have been kept separate from merged ########
# 
acaps <- download_acaps_npi_data(cached=TRUE, silent=TRUE)

# Event time relative to 10 deaths ##############################
#
merged %>% 
  group_by(iso3c) %>%
  filter(deaths >= 10) %>%
  summarise(edate = min(date)) -> ctry_edate

merged %>%
  select(iso3c, country) %>%
  unique() -> ctry_names

# NPI (Non-Pharmaceutical Intervention) #########################
#
acaps %>%
  mutate(npi_date = ymd(date_implemented)) %>%
  rename(npi_type = category) %>%
  mutate(
    npi_regional = !is.na(admin_level_name),
    npi_targeted_pop_group = targeted_pop_group == "Yes",
    npi_lockdown = str_detect(measure, "General lockdown")
  ) %>%
  select(iso3c, npi_date, npi_type, npi_regional, 
         npi_targeted_pop_group, npi_lockdown) -> npi
npi %>%
  left_join(ctry_edate, by = "iso3c") %>%
  filter(!is.na(edate)) %>%
  mutate(npi_edate = as.numeric(npi_date - edate)) %>%
  left_join(ctry_names, by = "iso3c") %>%
  select(iso3c, country, npi_date, npi_edate, npi_type, npi_lockdown) -> npi_edates

# Death and social distancing ###################################
# from https://joachim-gassen.github.io/2020/03/merge-covid-19-data-with-governmental-interventions-data/
#
compare_death_growth <- function(df, var) {
  lab_caption <- paste0(
    "Deaths data from Johns Hopkins University Center for Systems Science ", 
    "and Engineering (JHU CSSE).\nGovernment intervention measures ",
    "Assessment Capacities Project (ACAPS). Data current.\n",
    "At least five daily country-level observations required by group for ", 
    "estimation. Code: https://github.com/joachim-gassem/tidy_covid19"
  )
  lab_color <- case_when(
    var == "soc_dist_ctry" ~
      "More than median amount of\nsocial distancing measures",
    var == "lockdown_ctry" ~ "Lockdown initiated",
    TRUE ~ var
  )

  df %>%
    mutate(pct_inc_deaths = deaths/lag(deaths) - 1) %>%
    filter(edate >= 0) %>%
    group_by(edate, !! sym(var)) %>%
    filter(n() >= 5) %>%
    summarise(
      mean = mean(pct_inc_deaths),
      std_err = sd(pct_inc_deaths)/sqrt(n()),
      n = n()
    ) %>%
    ggplot(aes(x = edate, y = mean, color = !! sym(var))) +
    geom_pointrange(
      aes(ymin = mean-1.96*std_err, ymax = mean+1.96*std_err),
      position=position_dodge(0.4)
    ) + labs(
      x = lab_x,
      y = "Average daily percentage increase in reported deaths by group",
      caption = lab_caption,
      color = lab_color
    ) + 
    theme_minimal() + 
    theme(
      legend.position = c(0.75, 0.75),
      plot.title.position = "plot", 
      plot.caption.position =  "plot",
      plot.caption = element_text(hjust = 0),
      axis.title.x = element_text(hjust = 1),
      axis.title.y = element_text(hjust = 1),
    ) +
    scale_y_continuous(labels = scales::percent) 
}

compare_death_growth(df, "soc_dist_ctry")

# Association between testing and deaths ########################
# from https://joachim-gassen.github.io/2020/05/tidycovid19-new-data-and-doc/
#
early_tests <- merged %>%
  group_by(iso3c) %>%
  filter(population > 10e6) %>%
  filter(confirmed > 0) %>%
  filter(!all(is.na(total_tests))) %>%
  mutate(total_tests = na.approx(c(0, total_tests), rule = 2)[-1]) %>%
  filter(date - min(date) < 30) %>%
  summarise(early_tests = unique(1e5*max(total_tests, na.rm = TRUE)/population)) %>%
  filter(!is.na(early_tests))
  
deaths <- merged %>%  
  group_by(iso3c) %>%
  filter(deaths > 1000) %>%
  filter(population > 10e6) %>%
  summarise(deaths = unique(1e5*max(deaths, na.rm = TRUE)/population)) 

deaths %>% left_join(early_tests, by = "iso3c") %>%
  filter(!is.na(early_tests)) %>%
  ggplot(aes(x = early_tests, y = deaths)) + 
  geom_point() +
  theme_minimal() + 
  geom_label_repel(aes(label = iso3c)) +
  scale_x_log10() +
  scale_y_log10() +
  labs(
    x = "Tests within the first 30 days by 100,000 inhabitants (interpolated)",
    y = "Deaths per 100,000 inhabitants",
    caption = "Case data: JHU CSSE, Test data: Our World in Data."
  )


# eof c19-policies-DQ-2020.08.R


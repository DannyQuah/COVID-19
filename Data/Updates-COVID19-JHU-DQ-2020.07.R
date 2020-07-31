#! R
# @(#) Updates-COVID19-JHU-DQ-2020.07.R
# Last-edited: Wed 2020.07.29.1818 -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Sat 2020.07.04.1118 -- Danny Quah (me@DannyQuah.com)
#    First draft: Ad hoc script to process updates from relevant
#    COVID-19 data in cloud. Using as skeleton Tom Larsen's
# new_covid19_cases_timeseries_plot_with_relative_days-Tom.Larsen.R
# ----------------------------------------------------------------
library(tidyverse)
library(lubridate)

covid19Raw <-
  read_csv(
    "https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"
  )

covid19 <- covid19Raw %>%
  pivot_longer(-c(`Province/State`, `Country/Region`,   Lat,   Long),
               names_to  = "theDate",
               values_to = "nmbDeaths"
  ) %>%
  select(-c(Lat, Long)) %>%
  rename(
    ProvinceState = `Province/State`,
    Country = `Country/Region`
  )

covid19 <- covid19 %>%
  mutate(theDate = mdy(theDate)) %>%
# For those data that have been broken down into ProvinceState,
# group them back together into Country
  group_by(Country, theDate) %>%
  summarise(nmbDeaths = sum(nmbDeaths)) %>%
# No need for the grouping of single rows to remain
  ungroup()

covid19 %>%
  filter(Country == "US") %>%
  ggplot(aes(x = theDate, y = nmbDeaths)) +
  geom_line() +
  scale_x_date(date_breaks = "months", date_labels = "%d %b") +
  scale_y_continuous(labels = scales::comma) +
  labs(
    x = "Date", y = "Deaths",
    title = "COVID-19 deaths: US"
  )



# eof Updates-COVID19-DQ-2020.07.R

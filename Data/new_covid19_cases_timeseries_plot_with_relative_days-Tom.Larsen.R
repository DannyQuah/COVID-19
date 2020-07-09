#! R
# @(#) new_covid19_cases_timeseries_plot_with_relative_days-Tom.Larsen.R
# Last-edited: Tue 2020.07.07.1056 -- Danny Quah (me@DannyQuah.com)
# Created:     Sat 2020.07.04.1118 -- Tom Larsen
# ----------------------------------------------------------------
# Revision History:
#  % Sat 2020.07.04.1118 -- Tom Larsen
#    First draft: Posted on YouTube https://www.youtube.com/watch?v=MHh19BhtKEU
# ----------------------------------------------------------------
#
library(tidyverse)
library(lubridate)

theme_set(theme_minimal())

covid19_raw <- read_csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")

covid19 <- covid19_raw %>%
  pivot_longer(-c(`Province/State`, `Country/Region`, Lat, Long),
    names_to = "date",
    values_to = "confirmed_n"
  ) %>%
  select(-c(Lat, Long)) %>%
  rename(
    province_state = `Province/State`,
    country_region = `Country/Region`
  ) %>%
  mutate(date = mdy(date)) %>%
  group_by(country_region, date) %>%
  summarise(confirmed_n = sum(confirmed_n)) %>%
  ungroup()

covid19 <- covid19 %>%
  arrange(date) %>%
  group_by(country_region) %>%
  mutate(new_cases_n = confirmed_n - lag(confirmed_n, default = 0)) %>%
  ungroup()

covid19 %>%
  filter(country_region == "US") %>%
  ggplot(aes(x = date, y = new_cases_n)) +
  geom_line() +
  scale_x_date(date_breaks = "2 weeks", date_labels = "%d %b") +
  scale_y_continuous(labels = scales::comma) +
  labs(
    x = "Date", y = "New cases",
    title = "New confirmed COVID-19 cases in the United States"
  )

covid19 %>%
  filter(country_region %in% c("US", "Australia")) %>%
  ggplot(aes(x = date, y = new_cases_n, color = country_region)) +
  geom_line(show.legend = FALSE) +
  scale_x_date(date_breaks = "2 weeks", date_labels = "%d %b") +
  scale_y_continuous(labels = scales::comma) +
  facet_wrap(~country_region, ncol = 1, scales = "free_y") +
  labs(
    x = "Date", y = "New cases",
    title = "New confirmed COVID-19 cases in Australia & United States"
  )


# Plot using the day where the confirmed cases count crossed over 50 in a country
# as day = 0 for that country.

covid19 %>%
  filter(country_region %in% c("US", "Australia")) %>%
  group_by(country_region) %>%
  mutate(first_date_over_50_confirmed_cases = min(date[confirmed_n >= 50])) %>%
  ungroup() %>%
  mutate(days_after_50 = (first_date_over_50_confirmed_cases %--% date) / days(1)) %>%
  filter(days_after_50 >= 0) %>%
  ggplot(aes(x = days_after_50, y = new_cases_n, color = country_region)) +
  geom_line(show.legend = FALSE) +
  scale_y_continuous(labels = scales::comma) +
  facet_wrap(~country_region, ncol = 1, scales = "free_y") +
  labs(
    x = "Days >= 50 confirmed cases in the country", y = "New cases",
    title = "New confirmed COVID-19 cases in Australia & United States"
  )

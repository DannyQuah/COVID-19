# @(#) Updates-COVID19-DQ-2020.07.r
# Last edited: Sat 2020.07.04.1118 -- Danny Quah (me@DannyQuah.com)
# Created:     Sat 2020.07.04.1118 -- Danny Quah (me@DannyQuah.com)
# ****************************************************************
# Revision History:
#  % Sat 2020.07.04.1118 -- Danny Quah (me@DannyQuah.com)
#    First draft: Ad hoc script to process updates from relevant COVID-19 data
#    in cloud
# ****************************************************************
library(tidyverse)

COVID19 <-
  read_csv(
    "https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv"
  )


# eof Updates-DQ-2020.07.r

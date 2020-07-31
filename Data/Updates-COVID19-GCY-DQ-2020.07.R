#! R
# @(#) Updates-COVID19-GCY-DQ-2020.07.R
# Last-edited: Wed 2020.07.29.1822  -- Danny Quah (me@DannyQuah.com)
# ----------------------------------------------------------------
# Revision History:
#  % Wed 2020.07.29.1821  -- Danny Quah (me@DannyQuah.com)
#    First draft: R script to track China province COVID-19, via
#    Guangchuang Yu Github.
#    References
#    https://towardsdatascience.com/an-r-package-to-explore-the-novel-coronavirus-590055738ad6
#    https://github.com/GuangchuangYu/nCov2019
# ----------------------------------------------------------------
library(tidyverse)
library(lubridate)

remotes::install_github("GuangchuangYu/nCov2019")


library(nCov2019)
covid_cases <- get_nCov2019(lang='en')

#                              #map plot of COVID-19 cases worldwide
# plot(covid_cases)

#                              #map China
remotes::install_github("GuangchuangYu/chinamap")
require(chinamap)
cn = get_map_china()
#                              #Translate province
cn$province <- trans_province(cn$province)
plot(covid_cases, chinamap=cn, palette="Purples")





# eof Updates-COVID19-GCY-DQ-2020.07.R

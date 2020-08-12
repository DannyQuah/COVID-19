---
fileName: Quah-Danny-COVID19-Tradeoffs-Analytical-Resources-2020.08.md
# Last-edited: Sun 2020.08.02.1730 -- Danny Quah (me@DannyQuah.com)
Type: Notes
Tags: COVID19, DataScience
# Created: Tue 2020.07.28.1656 -- Danny Quah (me@DannyQuah.com)
title: COVID19-Tradeoffs-Analytical-Resources-2020.08
output: pdf_document
fontsize: 11pt
fontfamily: concrete
fontenc: T1
geometry: margin=1in
papersize: A4
pagestyle: plain
---

# Quah-Danny-COVID19-Tradeoffs-Analytical-Resources-2020.08

COVID-19 Tradeoffs: Analytical Resources
by
Danny Quah
August 2020

Larger, more comprehensive collections are already available for COVID-19 data analysis. Among those I have found useful include [Stats and R][Stats-R-COVID19-Top-100] and [Science versus Corona][ScienceVsCorona].

What appears here is not an attempt at completeness or extensiveness. Instead, this is a directed selection of sources, data, and other writings &mdash; focused on data analytics and economic modeling &mdash; that I am using for my research on what pressures different national policy-makers face and what problems they are trying to solve in this COVID-19 pandemic. Why have policy-makers selected different points in the tradeoff locus between their population's health and their economy's performance? What is the knowledge-basis to national policy-maker actions? How have media pressures, populist sentiment, and geopolitics helped shape policy actions and influenced national outcomes across different parts of the world?

## COVID19 Headline TPs

1. The US is the nation with the greatest total number of deaths (152k), the greatest total number of cases (4,495k), and the greatest number of new cases (68k) this past week. Normalised by population the US has the second greatest number of total cases (behind Chile) and the second greatest number of new cases (behind Brazil). [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack].
2. Greatest numbers of new cases: US (68k), Brazil (58k), India (53k), over past 7 days, [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack]
3. Highest number of cases normalised by population: Chile (20k), US (14k), Brazil (12k) per mn, [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack]
4. Highest number of deaths normalised by population: Belgium (861), UK (696), Spain (614) per mn, [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack]
5. Four fifths of those infected show only mild symptoms, akin to flu. However, 14% require hospitalisation and almost 5% need intensive care. (From China CDCP study of 45,000 cases in Mainland China). [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack]
6. The majority of those who have died from COVID-19 are 60 or older. In the UK 92.0%; in Italy, 89.5% (From 3372 UK and 21551 Italy deaths). [2020.08.01.1525][Information-Beautiful-COVID19-Infographic-Datapack]

## Policy Response Measures

Three broad categories of policy response measures.

1. Containment: lockdown restrictions; isolation and quarantine; school closures and movement restrictions; testing and contact tracing
2. Economic support: debt relief; income and wages support; jobs subsidies; investment risk-sharing; foreign aid
3. Health policies: short-term healthcare expenditures, testing; longer-term vaccine and other treatment investment
4. Data [Hale et al 2020][OxCGRT-2020]; previous analyses Gassen, J. [2020.03][Gassen-COVID19-Merge-Government-Interventions-2020], [2020.04][Gassen-COVID19-Explore-OxCGRT-2020].




## Data-Intensive

Gassen, Joachim. 2020. "[{tidycovid19}: New Data and Documentation][Gassen-tidycovid19-new-2020] (May).

Hale, Thomas, Sam Webster, Anna Petherick, Toby Phillips, and Beatriz Kira.  2020. [Oxford COVID-19 Government Response Tracker, Blavatnik School of Government][OxCGRT-2020]. Blavatnik School of Government, Oxford University. Data use policy: Creative Commons Attribution CC BY standard. [Github][OxCGRT-2020-Github]. These data are used in the R projects [COVID-19 Data Hub][IVADO-COVID19-Github], [Gassen, 2020b][Gassen-COVID19-Explore-OxCGRT-2020], [Information COVID19 Infographic Datapack][Information-Beautiful-COVID19-Infographic-Datapack].

Institute for Data Valorization, Canada. [COVID-19 Data Hub][IVADO-COVID19-Github] Github. Incorporates [OxCGRT][OxCGRT-2020-Github], World Bank Open Data access, and Google and Apple Mobility resources

Lakshmanan, Lak. 2020. "[Analyzing COVID-19 with BigQuery][Lakshmanan-L-2020.03-COVID19-BigQuery-Medium]", Google Cloud Medium.com (31 Mar).

Science versus Corona. 2020. [COVID-19 Overview Shiny][ScienceVsCorona-Overview-Shiny]. Includes Oxford stringency analysis; cases and deaths normalised by number of inhabitants.




## Resources

ACAPS. 2020. [COVID19 Government Measures Dataset][ACAPS-COVID19-Government-Measures-Data-2020].

Alqahtani, Khaled. 2020. [COVID-19 Shiny][Alqahtani-K-Shiny] (includes GDELT APIs for TV and newspaper analysis).

ASEAN Briefing. 2020. [Coronavirus Asia: ASEAN Live Updates by Country][Coronavirus-Asia-ASEAN-Briefing-by-Country].

Blavatnik School of Government, Oxford University. 2020. [The Oxford COVID-19 Government Response Tracker][OxCGRT-2020]. Use Hale et al 2020 reference below.

Cespedes, Luis; Chang, Roberto; and Velasco, Andres. 2020. "[The Macroeconomics of A Pandemic: A Minimalist Model][Cespedes-Change-Velasco-Macroeconomics-Pandemic-Minimalist-2020]", NBER Working Paper 27228 (May).

de Vlas, Sake J.; Coffeng, Luc E. 2020. "[A Phased Lift of Control: A Practical Strategy to Achieve Herd Immunity Against COVID-19 at the Country Level][deVlas-Coffeng-Herd-Immunity-COVID19-2020]", medRxiv Working Paper (Apr) doi: 10.1101/2020.03.29.20046011v2

Dong E., Du H., Gardner L. 2020. "[An interactive web-based dashboard to track COVID-19 in real-time][Dong-Du-Gardner-Track-COVID19-Realtime-2020]". Lancet Infect Dis; published online Feb 19.

Eichenbaum, Martin; Rebelo, Sergio; and Trabandt, Martin. 2020. "[The Macroeconomics of Pandemics][Eichenbaum-Rebelo-Trabandt-Macroeconomics-Epidemics-2020]", NBER Working Paper 26882 (Mar).

Gassen, Joachim. 2020. "[{tidycovid19}: New Data and Documentation][Gassen-tidycovid19-new-2020] (May).

Gassen, Joachim. 2020. "[Merge COVID-19 Data with Government Interventions Data][Gassen-COVID19-Merge-Government-Interventions-2020]", Github (Mar).

Gassen, Joachim. 2020. "[Exploring and Benchmarking Oxford Government Response Data][Gassen-COVID19-Explore-OxCGRT-2020]", Github (Apr).

Hale, Thomas, Sam Webster, Anna Petherick, Toby Phillips, and Beatriz Kira.  2020. [Oxford COVID-19 Government Response Tracker, Blavatnik School of Government][OxCGRT-2020]. Blavatnik School of Government, Oxford University. Data use policy: Creative Commons Attribution CC BY standard. [Github][OxCGRT-2020-Github]. These data are used in the R projects [COVID-19 Data Hub][IVADO-COVID19-Github], [Gassen, 2020b][Gassen-COVID19-Explore-OxCGRT-2020], [Information COVID19 Infographic Datapack][Information-Beautiful-COVID19-Infographic-Datapack].

Information is Beautiful. 2020. "[COVID-19 Coronavirus Infographic Datapack][Information-Beautiful-COVID19-Infographic-Datapack]" (Webpage)

Institute for Data Valorization, Canada. [COVID-19 Data Hub][IVADO-COVID19-Github] Github. Incorporates [OxCGRT][OxCGRT-2020-Github], World Bank Open Data access, and Google and Apple Mobility resources

Johns Hopkins University Center for Systems Science and Engineering (CSSE), Whiting School of Engineering. [COVID-19 Dashboard][JHU-2020-COVID19-Map-Dashboard]

Johns Hopkins University Center for Systems Science and Engineering (CSSE), Whiting School of Engineering. [Data][JHU-2020-COVID19-Deaths-data-github] Github.

Lakshmanan, Lak. 2020. "[Analyzing COVID-19 with BigQuery][Lakshmanan-L-2020.03-COVID19-BigQuery-Medium]", Google Cloud Medium.com (31 Mar).

Our World in Data. [Coronavirus][OurWorldInData-Coronavirus]. Webpage

Pichler, Anton; Pangallo, Marco; Maria del Rio-Chanona; Lafond, Francois; and Farmer, J. Doyne. 2020. "[Production Networks and Epidemic Spreading: How to Restart the UK Economy][Pichler-A-Production-Networks-Epidemic-UK-Restart-2020]", SSRN (May) doi: 10.2139/ssrn.3606984

Science versus Corona. 2020. [COVID-19 Overview Shiny][ScienceVsCorona-Overview-Shiny]. Includes Oxford stringency analysis; cases and deaths normalised by number of inhabitants.

Science versus Corona. 2020. [COVID-19 Exit Strategy Shiny][ScienceVsCorona-Exit-Shiny]. [Blog][Dablander-F-2020-Interactive-Exploration-COVID-Exit]. [deVlas and Coffeng preprint, 2020][deVlas-Coffeng-Herd-Immunity-COVID19-2020]

Stats and R. 2020. [Top 100 R resources on Novel COVID-19 Coronavirus Blog][Stats-R-COVID19-Top-100]

Tencent. 2020. [COVID-19 Data Compilation (in Chinese) Webpage][Tencent-2020-COVID19-Data-Compilation]

Tung, Patrick. 2020. "[An R Package to Explore the Novel Coronavirus][Tung-P-2020-R-Package-Coronavirus]", Towards Data Science (11 Feb)

Yu, Guangchuang. 2020. "[nCov2019: An R package with real-time data, historical data and Shiny app][Yu-G-2020-R-nCov2019-data-github]", Github. [Vignette][Yu-G-et-al-nCov2019-Vignette].  [MedRxiv preprint, 2020 Mar][Yu-G-et-al-nCov2019-medrxiv-2020]

## Link References
- [ACAPS-COVID19-Government-Measures-Data-2020][]
- [Alqahtani-K-Shiny][]
- [Coronavirus-Asia-ASEAN-Briefing-by-Country][]
- [Cespedes-Change-Velasco-Macroeconomics-Pandemic-Minimalist-2020][]
- [Dablander-F-2020-Interactive-Exploration-COVID-Exit][]
- [Dong-Du-Gardner-Track-COVID19-Realtime-2020][]
- [deVlas-Coffeng-Herd-Immunity-COVID19-2020][]
- [Eichenbaum-Rebelo-Trabandt-Macroeconomics-Epidemics-2020][]
- [Gassen-tidycovid19-new-2020][]
- [Gassen-COVID19-Merge-Government-Interventions-2020][]
- [Gassen-COVID19-Explore-OxCGRT-2020][]
- [Information-Beautiful-COVID19-Infographic-Datapack][]
- [IVADO-COVID19-Github][]
- [JHU-2020-COVID19-Deaths-data-github][]
- [JHU-2020-COVID19-Map-Dashboard][]
- [Lakshmanan-L-2020.03-COVID19-BigQuery-Medium][]
- [OurWorldInData-Coronavirus][]
- [OxCGRT-2020][]
- [OxCGRT-2020-Github][]
- [Pichler-A-Production-Networks-Epidemic-UK-Restart-2020][]
- [ScienceVsCorona][]
- [ScienceVsCorona-Overview-Shiny][]
- [ScienceVsCorona-Exit-Shiny][]
- [Stats-R-COVID19-Top-100][]
- [Tencent-2020-COVID19-Data-Compilation][]
- [Tung-P-2020-R-Package-Coronavirus][]
- [Yu-G-2020-R-nCov2019-data-github][]
- [Yu-G-et-al-nCov2019-Vignette][]
- [Yu-G-et-al-nCov2019-medrxiv-2020][]


<!--
 (Invisible Reference Section)
 -->

   [ACAPS-COVID19-Government-Measures-Data-2020]: https://www.acaps.org/covid19-government-measures-dataset
   [Alqahtani-K-Shiny]: https://drkhalid.shinyapps.io/covid19/
   [Coronavirus-Asia-ASEAN-Briefing-by-Country]: https://www.aseanbriefing.com/news/coronavirus-asia-asean-live-updates-by-country/
   [Cespedes-Change-Velasco-Macroeconomics-Pandemic-Minimalist-2020]: https://www.nber.org/papers/w27228.pdf
   [Dablander-F-2020-Interactive-Exploration-COVID-Exit]: https://scienceversuscorona.com/interactive-exploration-of-covid-19-exit-strategies/
   [deVlas-Coffeng-Herd-Immunity-COVID19-2020]: https://www.medrxiv.org/content/10.1101/2020.03.29.20046011v2
   [Dong-Du-Gardner-Track-COVID19-Realtime-2020]: https://doi.org/10.1016/S1473-3099(20)30120-1
   [Eichenbaum-Rebelo-Trabandt-Macroeconomics-Epidemics-2020]: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3559171
   [Gassen-tidycovid19-new-2020]: https://joachim-gassen.github.io/2020/05/tidycovid19-new-data-and-doc/
   [Gassen-COVID19-Merge-Government-Interventions-2020]: https://joachim-gassen.github.io/2020/03/merge-covid-19-data-with-governmental-interventions-data/
   [Gassen-COVID19-Explore-OxCGRT-2020]: https://joachim-gassen.github.io/2020/04/exploring-and-benchmarking-oxford-government-response-data/
   [Information-Beautiful-COVID19-Infographic-Datapack]: https://informationisbeautiful.net/visualizations/covid-19-coronavirus-infographic-datapack/
   [IVADO-COVID19-Github]: https://covid19datahub.io/
   [JHU-2020-COVID19-Deaths-data-github]: https://github.com/CSSEGISandData/COVID-19/blob/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv
   [JHU-2020-COVID19-Map-Dashboard]: https://coronavirus.jhu.edu/map.html
   [Lakshmanan-L-2020.03-COVID19-BigQuery-Medium]: https://medium.com/google-cloud/analyzing-covid-19-with-bigquery-13701a3a785
   [OurWorldInData-Coronavirus]: https://ourworldindata.org/coronavirus
   [OxCGRT-2020]: https://www.bsg.ox.ac.uk/research/research-projects/coronavirus-government-response-tracker
   [OxCGRT-2020-Github]: https://github.com/OxCGRT/covid-policy-tracker
   [Pichler-A-Production-Networks-Epidemic-UK-Restart-2020]: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3606984
   [ScienceVsCorona]: https://scienceversuscorona.com/
   [ScienceVsCorona-Overview-Shiny]: https://scienceversuscorona.shinyapps.io/covid-overview/
   [ScienceVsCorona-Exit-Shiny]: https://scienceversuscorona.shinyapps.io/covid-exit/
   [Stats-R-COVID19-Top-100]: https://www.statsandr.com/blog/top-r-resources-on-covid-19-coronavirus/
   [Tencent-2020-COVID19-Data-Compilation]: https://news.qq.com/zt2020/page/feiyan.htm
   [Tung-P-2020-R-Package-Coronavirus]: https://towardsdatascience.com/an-r-package-to-explore-the-novel-coronavirus-590055738ad6
   [Yu-G-2020-R-nCov2019-data-github]: https://github.com/GuangchuangYu/nCov2019
   [Yu-G-et-al-nCov2019-Vignette]: https://guangchuangyu.github.io/nCov2019/
   [Yu-G-et-al-nCov2019-medrxiv-2020]: https://www.medrxiv.org/content/10.1101/2020.02.25.20027433v2

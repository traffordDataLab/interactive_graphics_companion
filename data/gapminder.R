# Gapminder data #

# Source: Gapminder.org
# Publisher URL: https://www.gapminder.org/data/
# License: Creative Common Attribution License 4.0

library(tidyverse) ; library(readxl)

# Geographies  ---------------------------
# https://www.gapminder.org/data/geo/
download.file("http://gapm.io/dl_geo", destfile = "Data Geographies - v1 - by Gapminder.xlsx")
countries <- read_xlsx("Data Geographies - v1 - by Gapminder.xlsx", sheet = 2) %>% 
  select(country = name, 
         region = four_regions, 
         country_code = geo) %>% 
  mutate(region = gsub("(?<=\\b)([a-z])", "\\U\\1", tolower(region), perl = TRUE),
         country_code = toupper(country_code))

# Excerpt (1952-2017) ---------------------------

# Life expectancy
# http://gapm.io/ilex
lifeExp <- read_csv("life_expectancy_years.csv") %>% 
  select(country, `1952`, `1957`, `1962`, `1967`, `1972`, `1977`,
         `1982`, `1987`, `1992`, `1997`, `2002`, `2007`, `2012`, `2017`) %>% 
  gather(year, lifeExp, -country) %>% 
  mutate(join = str_c(country, year, sep = "-"))

# Income per person
# http://gapm.io/dgdppc
gdpPercap <- read_csv("income_per_person_gdppercapita_ppp_inflation_adjusted.csv") %>% 
  select(country, `1952`, `1957`, `1962`, `1967`, `1972`, `1977`,
         `1982`, `1987`, `1992`, `1997`, `2002`, `2007`, `2012`, `2017`) %>% 
  gather(year, gdpPercap, -country) %>% 
  mutate(join = str_c(country, year, sep = "-")) %>% 
  select(join, gdpPercap)

# Population
# http://gapm.io/dpop
pop <- read_csv("population_total.csv") %>% 
  select(country, `1952`, `1957`, `1962`, `1967`, `1972`, `1977`,
         `1982`, `1987`, `1992`, `1997`, `2002`, `2007`, `2012`, `2017`) %>% 
  gather(year, pop, -country) %>% 
  mutate(join = str_c(country, year, sep = "-")) %>% 
  select(join, pop)

left_join(lifeExp, gdpPercap, by = "join") %>% 
  left_join(., pop, by = "join") %>% 
  left_join(., countries, by = "country") %>% 
  select(country, region, country_code, year, lifeExp, gdpPercap, pop) %>% 
  write_csv("gapminder.csv")

# Historical data ---------------------------

# Life expectancy
# http://gapm.io/ilex
read_csv("life_expectancy_years.csv") %>% 
  gather(year, lifeExp, -country) %>% 
  left_join(., countries, by = "country") %>% 
  select(country, region, year, lifeExp) %>% 
  write_csv("gapminder_ilex.csv")

# Total population
# http://gapm.io/dpop
read_csv("population_total.csv") %>% 
  gather(year, pop, -country) %>% 
  left_join(., countries, by = "country") %>% 
  select(country, region, year, pop) %>%
  write_csv("gapminder_dpop.csv")

# Total fertility rate
# http://gapm.io/dtfr
read_csv("children_per_woman_total_fertility.csv") %>% 
  gather(year, fertilityRate, -country) %>% 
  left_join(., countries, by = "country") %>% 
  select(country, region, year, fertilityRate) %>%
  write_csv("gapminder_dtfr.csv")

# Internet users
# http://gapm.io/dintus
read_csv("internet_users.csv") %>% 
  gather(year, internetUsers, -country) %>% 
  left_join(., countries, by = "country") %>% 
  select(country, region, year, internetUsers) %>% 
  filter(year >= "1990") %>%
  mutate(internetUsers = internetUsers/100) %>% 
  write_csv("gapminder_dintus.csv")

# Countries of the world #

# Source: Natural Earth
# Publisher URL: https://www.naturalearthdata.com/
# License: Creative Common Attribution License 4.0

library(tidyverse) ; library(sf)

url <- "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip"
download.file(url, dest = "ne_110m_admin_0_countries.zip")
unzip("ne_110m_admin_0_countries.zip", exdir = ".")
file.remove("ne_110m_admin_0_countries.zip")

st_read("ne_110m_admin_0_countries.shp") %>% 
  select(country = NAME,
         country_code = ADM0_A3) %>% 
  filter(country != "Antarctica") %>% 
  st_write("countries.geojson")
  
st_read("ne_110m_admin_0_countries.shp") %>% 
  select(country = NAME,
         country_code = ADM0_A3) %>% 
  filter(country != "Antarctica") %>% 
  st_centroid(.) %>% 
  cbind(st_coordinates(.)) %>% 
  rename(lon = X, lat = Y) %>% 
  st_write("countries_centroids.geojson")

# Import Packages
library(dplyr)
library(jsonlite)

# Import Data
reviews <- read.csv('caphill_bars.csv')

# Keep only unique bars with ratings
reviews_clean <- reviews %>% 
  select(name, rating, latitude, longitude) %>% 
  distinct()

#save file as json
write.csv(reviews_clean, "bars_clean.csv")

# Afterwords csv converted to GEOJson using geojson.io
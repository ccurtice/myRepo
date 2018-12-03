library(fields)
library(dplyr)

# Analysis Section
# Calculate distance to ship at the start of the CEE
gmpts$d2ship <- rdist.earth.vec(cbind(kStart$longitude, kStart$latitude), 
                                cbind(gmpts$longitude, gmpts$latitude))

gmpts %>% 
  group_by(status) %>% 
  summarize(mean = mean(d2ship, na.rm = TRUE))


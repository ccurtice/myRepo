library(dplyr)
library(readr)

# Read in data
# positional data about the RV Kahuna

# add a filepath variable
# make code more portable, add in var for data dir
dataDir <- "data/"

kahuna <- read_csv('data/2018-11-26_2017-Cape-Hatteras-BRS-kahuna-CEE.csv')
kStart <- kahuna %>% 
  filter(status == 'start')

# Read in Gm182 Data: 100 estimated positions of Gm182, augmented with focal follow data
gm182UP <- read_csv('data/2018-11-27_Gm182-UserPoints-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'userPoints')

# Read in Gm182 Data: 100 estimated positions of Gm182
gm182 <- read_csv('data/2018-11-27_Gm182-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'noUserPoints')

# combine selected NEON csv files for final project

# Nyah Noronha
# May 2026
# nyahnoronha@ku.edu

library("dplyr")

# combine soil CO2 files
library(dplyr)

water_files <- list.files("data/soil_water_raw",
                          pattern = "SWS_30_minute.*csv",
                          full.names = TRUE)

soil_water <- lapply(water_files, read.csv) %>%
  bind_rows()

write.csv(soil_water, "data/soil_water.csv", row.names = FALSE)


# combine soil temperature files
temp_files <- list.files("data/soil_temp_raw",
                         pattern = "ST_30_minute.*csv",
                         full.names = TRUE)

soil_temp <- lapply(temp_files, read.csv) %>%
  bind_rows()

write.csv(soil_temp, "data/soil_temp.csv", row.names = FALSE)


# combine soil water files
water_files <- list.files("data/soil_water_raw",
                          pattern = "SWS_30_minute.*csv",
                          full.names = TRUE)

soil_water <- lapply(water_files, read.csv) %>%
  bind_rows()

write.csv(soil_water, "data/soil_water.csv", row.names = FALSE)

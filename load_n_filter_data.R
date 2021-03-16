library(dplyr)
library(lubridate)

if (!file.exists("data")) {
  dir.create("data")
}

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
              "data\\assign.zip")

setwd("data")
unzip("assign.zip")
file.remove("assign.zip")

df_data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE) %>%
              mutate(Date = as.Date(Date, format = "%d/%m/%Y")) %>%
              filter(year(Date) == 2007 &
                     month(Date) == 2 &
                     (day(Date) == 1 | day(Date) == 2)) %>%
              mutate(Date_and_time = as_datetime(paste(Date, Time))) %>%
              select(Date, Time, Date_and_time, everything())


for (i in 4:10) {
  df_data[, i] <- as.numeric(df_data[, i])
}

setwd("..")

## Data import, cleaning, and transformation

#  The following code assumes that "household_power_consumption.txt" is already
#  in the current working directory

library(lubridate)  
library(data.table)
HHP <- fread("household_power_consumption.txt",na.strings=c("?","NA","null"))  
DT <- subset(HHP,dmy(Date) == dmy('1/2/2007') | dmy(Date) == dmy('2/2/2007'),)  
DF <- data.frame(DT)

##  Alternative ways to transform the data
#   DF <- subset(HHP, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
#   DF <- transform(DF, DateTime = dmy_hms(paste(DF$Date,DF$Time)))

## This script plot line graph of global active power with a given data frame
## named DF
source("loaddata.R")

library(lubridate)
png(filename="plot2.png", width=480, height=480, bg="transparent")
plot(dmy_hms(paste(DF$Date,DF$Time)), DF$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()

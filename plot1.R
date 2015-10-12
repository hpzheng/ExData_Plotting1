## This script plot histogram of global active power with a given data frame
## named DF
source("loaddata.R")

png(filename="plot1.png", width=480, height=480, bg="transparent")
hist(DF$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()

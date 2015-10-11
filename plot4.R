## This script plot line graph of multiple parameters with a given data frame
## named DF, in four panels

# Opening graphic devices for plotting
library(lubridate)
c4p1plot <- function(param1,xlab,ylab) {
    plot(dmy_hms(paste(DF$Date,DF$Time)), DF[,param1],
         type="l",
         xlab=xlab,
         ylab=ylab)
}
png(filename="plot4.png", width=480, height=480, bg="transparent")
par(mfrow=c(2,2))


## Sub-graph 1: Global Active Power
c4p1plot("Global_active_power", "", "Global Active Power")


## Sub-graph 2: Voltage
c4p1plot("Voltage", "datetime", "Voltage")


## Sub-graph 3: sub metering
c4p1plot("Sub_metering_1", "", "Energy sub metering")
lines(dmy_hms(paste(DF$Date,DF$Time)), DF$Sub_metering_2, col="red")
lines(dmy_hms(paste(DF$Date,DF$Time)), DF$Sub_metering_3, col="blue")
legend("topright", bty="n", lwd=1,
       col=c("black","red","blue"),
       legend=names(DF[,7:9]))


## Sub-graph 4: Global Reactive power
c4p1plot("Global_reactive_power", "datetime", "Global_reactive_power")


## Closing graphic device
par(mfrow=c(1,1))
dev.off()

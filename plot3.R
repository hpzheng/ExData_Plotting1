## This script plot line graph of 3 sub meters with a given data frame
## named DF
library(lubridate)
png(filename="plot3.png", width=480, height=480)
plot(dmy_hms(paste(DF$Date,DF$Time)), DF$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(dmy_hms(paste(DF$Date,DF$Time)), DF$Sub_metering_2, col="red")
lines(dmy_hms(paste(DF$Date,DF$Time)), DF$Sub_metering_3, col="blue")
legend("topright", lwd=1, col=c("black","red","blue"), legend=names(DF[,7:9]))
dev.off()
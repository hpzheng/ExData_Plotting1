## Data import, cleaning, and transformation

    library(lubridate)  
    library(data.table)
    HHP <- fread("household_power_consumption.txt",na.strings=c("?","NA","null"))  
    DT <- subset(HHP,dmy(Date) == dmy('1/2/2007') | dmy(Date) == dmy('2/2/2007'),)  
    DF <- data.frame(DT)

#### The following transformation is an alternative way to subset data
    DT <- subset(HHP, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))

#### The following transformation could have been used to simplify plotting
    DF <- transform(DF, DateTime = dmy_hms(paste(DF$Date,DF$Time)))



## R codes for Plotting

* plot1.R
* plot2.R
* plot3.R
* plot4.R

A function c4p1plot() is defined in 'plot4.R' to facilitate plotting  
'c4p1' stands for Course 4 Project 1

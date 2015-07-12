plot2 <- function() {
  par(mfrow=c(1,1))
  power_consumption <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
  power_consumption$DateTime <- strptime(paste(power_consumption$Date,power_consumption$Time),format="%d/%m/%Y %H:%M:%S")
  power_consumption_sub <- subset(power_consumption,as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
  png(filename="plot2.png", width=480, height=480, units="px")
  with(power_consumption_sub,
       plot(DateTime,
            Global_active_power,
            col="black",
            type="l",
            main="",
            xlab="",
            ylab="Global Active Power (kilowatts)"))
  dev.off()
}
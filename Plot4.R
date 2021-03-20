png("plot4.png", width=480, height=480)

par(mfcol=c(2,2))


# graph #1 ----------------------------------------------------------------
x <- hpc$DateTime
y <- hpc$Global_active_power
plot(x, y, type="n", xlab="", ylab="Global Active Power") 
lines(x, y, type="s") 
# graph #2 ----------------------------------------------------------------
x <- hpc$DateTime
y1 <- hpc$Sub_metering_1
y2 <- hpc$Sub_metering_2
y3 <- hpc$Sub_metering_3
plot(x, y1, type="n", xlab="", ylab="Energy sub metering") 
lines(x, y1, type="s", col="black") 
lines(x, y2, type="s", col="red") 
lines(x, y3, type="s", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1, lwd=1, col=c("black", "red", "blue"))
# graph #3 ----------------------------------------------------------------

x <- hpc$DateTime
y <- hpc$Voltage
plot(x, y, type="n", xlab="datetime", ylab="Voltage") 
lines(x, y, type="s") 
# graph #4 ----------------------------------------------------------------
x <- hpc$DateTime
y <- hpc$Global_reactive_power
plot(x, y, type="n", xlab="datetime", ylab="Global_reactive_power") 
lines(x, y, type="s") 

dev.off(
  
)

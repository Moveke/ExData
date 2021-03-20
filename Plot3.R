png("plot3.png", width=480, height=480)
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

dev.off(
  
)

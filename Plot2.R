source("hpc.R")


png("plot2.png", width=480, height=480)
x <- hpc$DateTime
y <- hpc$Global_active_power
plot(x, y, type="n", xlab="", ylab="Global Active Power (kilowatts)") 
lines(x, y, type="s") 


dev.off(
  
)

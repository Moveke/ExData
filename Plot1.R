source("loadCourseProject1data.R")

# generate histogram
png("plot1.png", width=480, height=480)
hist(hpc$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red")

# release active device
dev.off(
)

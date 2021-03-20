library(data.table)
sourcezipfile <- "household_power_consumption.zip"
sourcefile <- "household_power_consumption.txt"

colclasses <- c("character", "character", "numeric", "numeric","numeric","numeric", 
                "numeric","numeric","numeric")


startrow <- c("1/2/2007")
numdaystoread <- 2
readrows <- 24*60*numdaystoread
CP1data <- fread(sourcefile, sep="auto", header=FALSE, 
                    colClasses = colclasses, skip = startrow, nrows = readrows)
setnames(CP1data,names(fread(sourcefile, sep="auto", header=TRUE, 
                             colClasses=colclasses, nrows=0)))


CP1data$DateTime <- as.POSIXct(paste(CP1data$Date, CP1data$Time), 
                               format="%d/%m/%Y %H:%M:%S")

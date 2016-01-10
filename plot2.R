#Subsetting the datafile
dataFile <- "./datafiles/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSet_Datafile <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Use SubSet_Datafile and create plot
#Add labels and formatting
datetime <- strptime(paste(SubSet_Datafile$Date, SubSet_Datafile$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(SubSet_Datafile$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
#Subsetting the datafile
dataFile <- "./datafiles/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSet_Datafile <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Use SubSet_Datafile and create histogram
#Add labels and formatting
Global_active_power <- as.numeric(SubSet_Datafile$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data$DateTime<-as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data2<-data[which(data$Date>=as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02")),]
png(filename="plot1.png", width=480, height=480, units="px")
hist(data2$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency" )
dev.off()
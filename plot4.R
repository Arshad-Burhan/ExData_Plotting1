datafile<-"./data/household_power_consumption.txt"
data1<-read.table(datafile,header=T,sep=";",na.strings="?",stringsAsFactors=F,dec=".")
data2<-data1[data1$Date %in% c("1/2/2007","2/2/2007"),]

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(datetime,globalActivePower,xlab="",ylab="Global Active Power (kilowatts)",type="l")

plot(datetime,data2$Voltage,xlab="datetime",ylab="Voltage",type="l")

plot(datetime,data2$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
lines(datetime,data2$Sub_metering_2,type="l",col="red")
lines(datetime,data2$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2,col=c("black","red","blue"),bty="n")

plot(datetime,data2$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")

dev.off()
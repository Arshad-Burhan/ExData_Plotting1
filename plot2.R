datafile<-"./data/household_power_consumption.txt"
data1<-read.table(datafile,header=T,sep=";",na.strings="?",stringsAsFactors=F,dec=".")
data2<-data1[data1$Date %in% c("1/2/2007","2/2/2007"),]

datetime<-strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:%S")
globalActivePower<-as.numeric(data2$Global_active_power)

png("plot2.png",width=480,height=480)

plot(datetime,globalActivePower,xlab="",ylab="Global Active Power (kilowatts)",type="l")

dev.off()
file<-"./data/household_power_consumption.txt"
data1<-read.table(file,header=T,sep=";",na.strings="?",stringsAsFactors=F,dec=".")
data2<-data1[data1$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower<-as.numeric(data2$Global_active_power)

png("plot1.png",width=480,height=480)

hist(globalActivePower,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

dev.off()

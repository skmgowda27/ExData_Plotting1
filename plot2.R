a <-  read.table("household_power_consumption.txt", sep = ";")
a$V1 <- as.Date(as.character(a$V1),'%d/%m/%Y')
c <- subset(a,as.Date(V1) >= '2007-02-01' &  as.Date(V1) <= '2007-02-02')
d <- c
d$V3 <- as.numeric(as.character(c$V3))
d <- transform(d, timestamp=as.POSIXct(paste(V1, V2)), "%d/%m/%Y %H:%M:%S")
##d <- as.numeric(levels(c))[c]
png('plot2.png')
plot(d$timestamp,d$V3,type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
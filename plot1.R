a <-  read.table("household_power_consumption.txt", sep = ";")
a$V1 <- as.Date(as.character(a$V1),'%d/%m/%Y')
c <- subset(a,as.Date(V1) >= '2007-02-01' &  as.Date(V1) <= '2007-02-02')
d <- c
d$V3 <- as.numeric(as.character(c$V3))
##d <- as.numeric(levels(c))[c]
png('plot1.png')
hist(d$V3,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
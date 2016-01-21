png(filename='plot3.png')
data <- read.csv2('household_power_consumption.txt', skip=66637, nrows=2880, header=FALSE, stringsAsFactors=FALSE, col.names=c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
data$Global_active_power = as.numeric(data$Global_active_power)
data$DateTime = strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S') 
#head(data)

# plot 3
plot(data$DateTime, data$Sub_metering_1, type='n', xlab='',  ylab='Energy sub metering')
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright', lty=1, col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3') )

dev.off()

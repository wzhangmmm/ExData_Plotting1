png(filename='plot2.png')
data <- read.csv2('household_power_consumption.txt', skip=66637, nrows=2880, header=FALSE, stringsAsFactors=FALSE, col.names=c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
data$Global_active_power = as.numeric(data$Global_active_power)
data$DateTime = strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S') 
#head(data)

# plot 2
plot(data$DateTime, data$Global_active_power, type='n', xlab='',  ylab='Global Active Power (kilowatts)')
lines(data$DateTime, data$Global_active_power)

dev.off()

## Read the data
Dados <- read.table(file = "household_power_consumption.txt", sep = ";", 
                    skip = 66637,
                    nrows = 2880)

## Adjusting the X axis
Sys.setlocale("LC_TIME", "C")
y <- paste(Dados$V1,Dados$V2)
dt <- strptime(y, "%d/%m/%Y %H:%M:%S")
graf <- data.frame(Dados, dt)

##Saving to a png file
png(file = "plot3.png")

##Plotting the data
plot(dt,Dados$V7, xlab= "", ylab ="Energy sub metering", type = "n")
points(dt,Dados$V7, type = "l")
points(dt,Dados$V8, col = "red", type = "l")
points(dt,Dados$V9, col = "blue", type = "l")
legend("topright", lty = 1, col = c("black", "red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Closing the file
dev.off()
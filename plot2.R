## Read the data
Dados <- read.table(file = "household_power_consumption.txt", sep = ";", 
                    skip = 66637,
                    nrows = 2880)

## Adjusting the X axis
Sys.setlocale("LC_TIME", "C")
y <- paste(Dados$V1,Dados$V2)
dt <- strptime(y, "%d/%m/%Y %H:%M:%S")
graf <- data.frame(Dados, dt)

##Plotting the data
plot(dt,Dados$V3, xlab= "", ylab ="Global Active Power (kilowatts)", type = "l")

## Saving to a png file
dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")
dev.off()
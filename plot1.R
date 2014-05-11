## Read the data
Dados <- read.table(file = "household_power_consumption.txt", sep = ";", 
                    skip = 66637,
                    nrows = 2880)
## Plotting the data
hist(Dados$V3, main = "Global Active Power", col = "red", 
     xlab = "Global Active Power (kilowatts)")
## Saving it to a PGN file
dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
dev.off()
# Coursera Data Science specialization ##
# Course 4: Exploratory Analysis #
# Peer Graded Assignment # 1  ## 
# Name: Konstantinos Lianos ##

# load required libraries
library(readr)
library(lubridate)
# import Electric Power Consumptions dataset

EPC_dataset <- read_delim(
  "./exdata_data_household_power_consumption/household_power_consumption.txt",
  na = "?"
)

# check dataset properties

str(EPC_dataset)

# convert date format from text to Date 

EPC_dataset$Date <- dmy(EPC_dataset$Date)

# subset data for dates 2007-02-01 and 2007-02-02

EPC_subset <- EPC_dataset[EPC_dataset$Date >= "2007-02-01" &
                            EPC_dataset$Date <= "2007-02-02",]


# Create histogram for Global Active Power

png(filename = "plot1.png",width = 480,
    height = 480)

hist(EPC_subset$Global_active_power,
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

png(filename = "plot1.png",width = 480,
    height = 480)
dev.off()

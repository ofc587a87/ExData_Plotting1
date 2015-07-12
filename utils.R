# Functions used for Course Project 1

# library("sqldf");

# Read the dta file and return the data, filtered and converted, ready to be processed.
readFile <- function() {
    
    # TODO: Read filtered dataset (red.csv.sql?)
    data <- read.csv(unz(paste(getwd(), "/exdata-data-household_power_consumption.zip", sep = ""), "household_power_consumption.txt"),
                     header=TRUE, sep=";", na.strings="?",
                     colClasses = c("factor", "factor", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"));
    data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ];
    
    
    # Convert data times
    data$Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S");
    data$Date <- as.Date(data$Date, format = "%d/%m/%Y");
    
    #return result
    data
}

if(!exists("data", inherits = FALSE)){
    message("Reading data (only at first load)");
    data <- readFile();
    message("Done!");
}
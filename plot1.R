source("utils.R");

# Render an histogram of frequency Vs Global Active Power
renderPlot1 <- function()
{
    #define device
    png("plot1.png", width = 480, height = 480, units = "px");
    
    #create plot, will be send to current device (png)
    hist(data$Global_active_power,
         main="Global Active Power",
         ylab = "Frequency",
         xlab = "Global Active Power (kilowatts)",
         col="red");
    
    # closes device (needed for files!)
    dev.off();
    
    #all done!
    message("PLot 1 generated!");
}

renderPlot1();
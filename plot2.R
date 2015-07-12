#read data
source("utils.R");

# Render an histogram of frequency Vs Global Active Power
renderPlot2 <- function()
{
    #define device
    png("plot2.png", width = 480, height = 480, units = "px");
    
    #create line plot, will be send to current device (png)
    with(data, plot(Time, Global_active_power,
         ylab = "Global Active Power (kilowatts)",
         xlab = "",
         type="l"));
    
    # closes device (needed for files!)
    dev.off();
    
    #all done!
    message("PLot 2 generated!");
}

renderPlot2();
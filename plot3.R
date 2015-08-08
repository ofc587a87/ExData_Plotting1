
#read data
source("utils.R");

# Render an histogram of frequency Vs Global Active Power
renderPlot3 <- function()
{
    #define device
    png("plot3.png", width = 480, height = 480, units = "px");
    
    with(data, {
            #create empty plot, will be send to current device (png)
            plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type="n")
            #add every line
            lines(Time, Sub_metering_1, col="black")
            lines(Time, Sub_metering_2, col="red")
            lines(Time, Sub_metering_3, col="blue")
    });

    legend("topright", lty=1,
           col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    
    
    # closes device (needed for files!)
    dev.off();
    
    #all done!
    message("Plot 3 generated!");
}

renderPlot3();
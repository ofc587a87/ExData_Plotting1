
#read data
source("utils.R");

# Render an histogram of frequency Vs Global Active Power
renderPlot4 <- function()
{
    #define device
    png("plot4.png", width = 480, height = 480, units = "px");
    
    #define multiplot 2 x 2
    par(mfrow = c(2, 2));
    
    #create plots 1 and 2, will be send to current device (png)
    with(data, {
         plot(Time, Global_active_power, ylab = "Global Active Power", xlab = "", type="l")
         plot(Time, Voltage, ylab = "Voltage", xlab = "datetime", type="l")
         
        }
    );
    
    #creates plot 3
    with(data, {
        #create empty plot, will be send to current device (png)
        plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type="n")
        #add every line
        lines(Time, Sub_metering_1, col="black")
        lines(Time, Sub_metering_2, col="red")
        lines(Time, Sub_metering_3, col="blue")
    });
    legend("topright", lty=1, bty="n", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    #creates plot 4
    with(data, plot(Time, Global_reactive_power, xlab = "datetime", type="l"));
    
    # closes device (needed for files!)
    dev.off();
    
    #all done!
    message("Plot 4 generated!");
}

renderPlot4();
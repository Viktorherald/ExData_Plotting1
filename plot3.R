png("plot3.png", width = 480, height = 480)

with(df_data, {
              plot(Date_and_time, Sub_metering_1, type= "l", 
                   xlab = "",
                   ylab = "Energy sub metering")
              lines(Date_and_time, Sub_metering_2, type= "l", col = "red")
              lines(Date_and_time, Sub_metering_3, type= "l", col = "blue")
              })

legend("topright", names(df_data[, 8:10]), 
       col = c("black", "red", "blue"), 
       lty = 1)

dev.off()

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(df_data, {
  plot(Date_and_time, Global_active_power, 
                   type= "l",
                   xlab = "",
                   ylab = "Global Active Power")
  
  plot(Date_and_time, Voltage, 
       type= "l",
       xlab = "datetime")
})

with(df_data, { 
  plot(Date_and_time, Sub_metering_1, type= "l", 
       xlab = "",
       ylab = "Energy sub metering")
  lines(Date_and_time, Sub_metering_2, type= "l", col = "red")
  lines(Date_and_time, Sub_metering_3, type= "l", col = "blue")
  legend("topright", names(df_data[, 8:10]), 
       col = c("black", "red", "blue"), 
       lty = 1,
       bty = "n")
  })

with(df_data, { 
  plot(Date_and_time, Global_reactive_power, type= "l", 
       xlab = "datetime")
})

dev.off()

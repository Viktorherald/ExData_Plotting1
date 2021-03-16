png("plot2.png", width = 480, height = 480)

with(df_data, plot(Date_and_time, Global_active_power, 
                   type= "l",
                   xlab = "",
                   ylab = "Global Active Power (kilowatts)"))
dev.off()

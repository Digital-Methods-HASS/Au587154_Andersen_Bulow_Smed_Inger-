# I will be making a plot For the Western Politcal block the same way I have done for the Eastern Political block (see script3)

summary(Data_Set_For_Western_Political_Block)

z <-c(70.13,70.33,70.73,71.10,71.44,71.78,72.10,72.39,72.66,72.91,73.17,73.38,73.60,73.78,73.96,74.14,74.32,74.50,74.68,74.87,75.08,75.28,75.52,75.78,76.03,76.34,76.62,76.90,77.14,77.41,77.62,77.83,78.03,78.21,78.40,78.58,78.73,78.93,79.08,79.24,79.41,79.54)

#Creating plot:
plot(x,z, xlab = "Year", zlab = "Average Life Expectancy For Females", main = "Life Expectancy For Females in The Western Political Block", type = "o", col="blue", pch =20, lwd=2)
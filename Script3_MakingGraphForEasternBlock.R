#From my newly createt dataset for the eastern political block, I will create a graph:
library(tidyverse)
#To look af the averagelife expectancy for females in the eastern political block I use the mean for each year ex. 1950, 1951 and so on until 1991.
#The mean is the the life expectancy for females of all the countries, divided by the number of countries, for a specefik year.

summary(Data_Set_For_Earsten_Political_Block)

#From what I have learnd through the summary command I can creat new object.
library(tidyverse)

#going to to create my X acses which will be time 
x<- c(1950:1991)

#Create my Y values, which is the mean for every year that the summary command will show
summary(Data_Set_For_Earsten_Political_Block)
y <- c(61.00,61.44,62.23,63.01,63.75,64.47,65.15,65.79,66.40,66.96,67.50,67.96,68.40,68.77,69.11,69.40,69.66,69.90,70.11,70.29,70.49,70.65,70.81,70.93,71.05,71.17,71.27,71.37,71.47,71.56,71.67,71.79,71.93,72.08,72.23,72.39,72.50,72.58,72.65,72.67,72.67,72.66)

# Make Plot:
plot(x,y, xlab = "Year", ylab = "Average Life Expectancy For Females", main = "Life Expectancy For Females in The Eastern Political Block", type = "o", col="red", pch =20, lwd=2)

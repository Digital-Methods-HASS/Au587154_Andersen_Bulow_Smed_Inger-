#Making and interactiv Map
#Installing packages rworldmap and manipulate
install.packages("rworldmap")
install.packages("manipulate")
library(rworldmap)
library(manipulate)

# I am Using the script from http://marcoghislanzoni.com/blog/2013/10/06/interactive-map-of-world-population-with-r/
# I am Using the countrycode from his used data set from: Source: WPP2012_POP_F01_1_TOTAL_POPULATION_BOTH_SEXES.xls
#Frist 16 rows are deletet, and the united nations logo, and collumns "Major area,.." are changed to "Area" and  "Country codes" is changed to "code"
# Converted to CSV in Excel 
#I will combine the dataset, life_expectancy_female and countrycode1(will prudece from countrycoderaw) to get the country codes
#Create objet with the two collums that intrest me 

CountryCodes1<-CountrycodesRaw[,c(3,5)]
colnames(CountryCodes1)

#Combine the two dataframes

ForMappingDataset <- life_expectancy_female %>% 
  left_join(select(CountryCodes1, code, Area), by = c("country"="Area"))

#Check if code has been merged into the dataset
colnames(ForMappingDataset)

#Check if it fits:

ForMappingDataset %>% filter(country=="Denmark") %>% select(code)

#It does, Now I will create the interactiv map from the script

# Convert country code to chr. Originally is an int.
ForMappingDataset$code<-as.character(ForMappingDataset$code)


# Join ForMappingDataset data with the world map, matching by country code
# Note: not all countries are matched!
data.map <- joinCountryData2Map(ForMappingDataset, joinCode = "UN", nameJoinColumn = "code")

# Plot a sample map for data
mapCountryData(data.map, nameColumnToPlot="2010")

# Plot an interactive map where you can change the displayed Year from 1950 to 2099 with a slider
manipulate(mapCountryData(data.map, 
                          nameColumnToPlot=paste(Year),
                          catMethod=c(0,10, 20, 30, 40, 50, 60, 70, 80, 90, 100)),
           Year=slider(1950,2099))


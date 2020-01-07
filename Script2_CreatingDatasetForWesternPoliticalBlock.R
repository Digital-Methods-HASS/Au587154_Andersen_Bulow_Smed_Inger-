
#I will now run tha same command on the original dataset for Western political block as I Did for the eastern political block.Same number of years, different countries.
#Belgium (16), Canada (30), Denmark (46), France (58), Iceland (73), Italy (80), Luxemburg (96), Netherlands (116), Norway (122), Portugal (132), United Kingdom (175), United States (176).

Data_Set_For_Western_Political_Block <-life_expectancy_female[c(16,30,46,58,73,80,96,116,122,132,175,176),1:43]

#I will wright the summary command for my western dataset

summary(Data_Set_For_Western_Political_Block)

#It will give me, among other infomation, the mean for each collumns
# in other words: The general life expectancy for females in the western political block for each of my years.
#Saved in the folder "output_data_finalproject"
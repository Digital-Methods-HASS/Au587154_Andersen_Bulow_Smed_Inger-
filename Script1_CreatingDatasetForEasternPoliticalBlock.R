# Create folders
dir.create("data_finalproject")
dir.create("output_data_finalproject")
dir.create("Figuers_finalproject")

#Create dataset for East political block
#step one: looking at the struktur of my dataset

str(life_expectancy_female)

#It has 184 observations and 151 variabeles or, in other words, 151 years and 184 countries. I am only intrest in the years 1950 until 1991. I will start by sort the countries. 
#Albania (2), Poland (1321), Romania (134), Hungary (72), Bulgaria (25), Slovak Republic (145), Czech Republic (45), Armenia (7), Azerbaijan (10), Belarus (15), Estonia  (54), Georgia (61), Kazakhstan  (84), Kyrgyz Republic (88), Latvia (90), Lithuania (95), Moldova (108), Russia (135), Tajikistan (162), Turkmenistan (171), Ukraine (173), Uzbekistan (178).
#The first space before the bracket indicats rowa, while the space after the comma in the bracket indicats collumns.
#I will need the names of the columnsto check. I will use the command names(life_expectancy_female)

names(life_expectancy_female)

#All the years now pops up, including "country" which is the first, so I will ned the frist 43 collumns
# I will mow use my knowlegde to create my new Dataset for the eastern political block and save it in data_output_finalproject

Data_Set_For_Earsten_Political_Block <-life_expectancy_female[c(2,131,134,72,25,145,45,7,10,15,54,61,84,88,90,95,108,135,162,171,173,178),1:43]

#Saved in the folder "output_data_finalproject"
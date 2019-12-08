# I would like to make a comparative Graph so I can compare the two political blocks:
# For this I will use the cbind command:
CombinedGraph <-data.frame(cbind(x,y,z))
CombinedGraph %>% pivot_longer(.,-x, names_to = "Variable", values_to = "Value") %>% 
  ggplot(., aes(x = x, y = Value, color = Variable)) +
  geom_point() +
  geom_line() +
  xlab("Year") +
  ylab("Average Life Expectancy For Females") + 
  scale_color_discrete(breaks = c("y","z"), labels = c("Eastern", "Western"))
library(lattice)
library(ggplot2)
library(ggthemes)

file <- read.csv("snowfall.csv")
df1 <- as.data.frame(file)
df1 <- df1[,-1]
df1 <- na.omit(df1)
df1
#Base R graph
plot(df1$year_start , df1$total_snow, main = "Snowfall at Paradise, Mt. Rainier National Park 1920 - 1930", xlab = "Year", ylab = "Snowfall in inches")
# lattice package graph
latticeSnow <- xyplot(total_snow~year_start, data = df1, main = "Snowfall at Paradise, Mt. Rainier National Park 1920 - 1930" , xlab = "Year", ylab = "Snowfall in inches")
latticeSnow
#ggplot graph
ggplotSnow <- ggplot(df1, aes(x = year_start, y = total_snow, color = total_snow)) 
#Adding layers
ggplotSnow + 
  geom_point(shape = 8, size = 1, alpha = 1.6) + 
  geom_smooth() + 
  labs(x = "Year", y = "Snowfall in inches") + ggtitle("Snowfall at Paradise, Mt. Rainier National Park 1920 - 1930") +
  theme_wsj()



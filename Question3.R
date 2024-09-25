library(ggplot)
library(ggplot2)
library(stats)
file <- "C:/Users/modim/Downloads/Regression Methods/Health_Sleep_Statistics.csv"
data <- read.csv(file)
View(data)
nrow(data)
ncol(data)
colnames(data)

ggplot(data, aes(x = Daily.Steps, y = Calories.Burned)) + geom_point(aes(color = Gender))+scale_color_viridis_d() +theme_minimal()
#There is a linear relationship between both quantitative variables, it is a positive linear relationship
plot(x= data$Daily.Steps,y = data$Calories.Burned)
#I'll have to think of a random question later on...

lin<- lm(formula = Daily.Steps~Calories.Burned, data = data) 
summary(lin)
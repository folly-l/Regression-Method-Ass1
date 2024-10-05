
library(ggplot2)
library(stats)
library(alr4)
file <- wblake
View(file)









#Question 3

file_1 <-  "C:/Users/modim/Downloads/Regression Methods/Regression-Method-Ass1/Health_Sleep_Statistics.csv"

data <- read.csv(file_1)

model_1 <- lm(formula = Daily.Steps~Age, data = data)
summary(model_1)

#H0: There is no linear relationship between Age and Daily Steps.
#h1 : There is a linear relationship....

# test statistics to use is what I am familiar with t-statistics..
#the distribution of the test statistics under the null hypothesis follows 
# a t distribution with 98 degrees of freedom...Assu ption to make would be 
#the LINE assumption...

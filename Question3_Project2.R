library(ggplot2)
library(stats)
library(alr4)
file <- wblake
View(file)

data(wblake)

## 75% of the sample size
smp_size <- floor((2/3) * nrow(wblake))

## set the seed to make your partition reproducible
set.seed(123)
train_ind <- sample(seq_len(nrow(wblake)), size = smp_size)

train <- wblake[train_ind, ]
test <- wblake[-train_ind, ]

#fun <- sample(data,size = smp_size)

lage <- lm(Length ~ Age, data = train)
summary(lage)

ssr <- sum((fitted(lage) - mean(train$Length))^2)

observed <- train$Length

predicted <- lage$fitted.values

sse1 <- sum(residuals^2)
sse1

sst2 <- sum((observed-mean(observed))^2)


sse2 <- sum((observed - predicted)^2)
sse2

r2 <- ssr/sst


residuals <- lage$residuals

mse2<-mean(lage$residuals^2)
mse2

predicted_values <- predict(lage, newdata = test)

# Step 4: Calculate the MSE on the test data
actual_values <- test$Length
mse_test <- mean((actual_values - predicted_values)^2)
mse_test

train$Age_Squared <-c((train$Age)^2)
test$Age_Squared <-c((test$Age)^2)

model <- lm(Length~Age_Squared, data = train)
summary(model)

predicted_values1 <- predict(model, newdata = test)

# Step 4: Calculate the MSE on the test data
actual_values1 <- test$Length
mse_test1 <- mean((actual_values1 - predicted_values1)^2)
mse_test1

model_1 <- lm(Scale~Age_Squared,data = train)
summary(model_1)
predicted_values2 <- predict(model_1, newdata = test)

# Step 4: Calculate the MSE on the test data
actual_values2 <- test$Length
mse_test2 <- mean((actual_values2 - predicted_values2)^2)
mse_test2

model_2 <- lm(Length~Age_Squared+Scale, data = train)
summary(model_2)

predicted_values3 <- predict(model_2, newdata = test)

# Step 4: Calculate the MSE on the test data
actual_values3 <- test$Length
mse_test3 <- mean((actual_values3 - predicted_values3)^2)
mse_test3

model_3 <- lm(Scale~Age_Squared + Length,data = train)
summary(model_3)

predicted_values4 <- predict(model_3, newdata = test)

# Step 4: Calculate the MSE on the test data
actual_values4 <- test$Length
mse_test4 <- mean((actual_values4 - predicted_values4)^2)
mse_test4

sse <-sum((fitted(lage)-train$Length)^2)
sse

#find ssr
ssr <- sum((fitted(lage) - mean(train$Length))^2)

#find sst
sst <- ssr + sse
sst


RSS <- c(crossprod(lage$residuals))
MSE <- RSS/length(lage$residuals)
RMSE <- sqrt(MSE)
df<- df.residual(lage)
residuals <- lage$residuals
rmse <- sqrt(mean(residuals^2))
rmse

SSE1 <- (rmse)^2*df
#x is Age



#sse
sse <-sum((fitted(lage)-train$Length)^2)
sse

# Observed values
observed <- train$Length

# Predicted values from the model
predicted <- lage$fitted.values

# SSE calculation
sse1 <- sum(residuals^2)
sse1

sst2 <- sum((observed-mean(observed))^2)


sse2 <- sum((observed - predicted)^2)
sse2

r2 <- ssr/sst


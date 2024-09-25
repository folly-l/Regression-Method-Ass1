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
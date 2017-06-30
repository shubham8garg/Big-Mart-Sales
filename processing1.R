library(dplyr)
library(sqldf)

train <- read.csv("train.csv")

#  Model 1- Average
output1 <- train %>% group_by(Item_Identifier) %>% summarise(mean(Item_Outlet_Sales))

test <- read.csv("test.csv")
check1 <- merge(test, output1, by = "Item_Identifier")

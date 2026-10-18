library(tidyverse)

data <- read.csv(file.choose())
data_test <- data

colnames(data)
summary(data)
str(data)
head(data)

corr_column <- c(1, 2, 5, 6, 9)
new_data <- data[, corr_column]

# Correlation
library(corrplot)
data$Gender <- ifelse(data$Gender == "Male", 1, 0)
data$weakness <- ifelse(data$weakness == "Yes", 1, 0)
data$sudden.weight.loss <- ifelse(data$sudden.weight.loss == "Yes", 1, 0)
data$visual.blurring <- ifelse(data$visual.blurring == "Yes", 1, 0)
data$class <- ifelse(data$class == "Positive", 1, 0)
corr_column <- c(1, 2, 5, 6, 9)

new_data <- data[, corr_column]

corr <- cor(new_data)
corrplot(corr, method = "square", type = "upper")

# Logistic Regression

library(caret)
library(pROC)

set.seed(123)
trainIndex <- createDataPartition(data$class, p = 0.8, list = FALSE)
trainData <- data[trainIndex, ]
testData <- data[-trainIndex, ]
Logistic_Regression_Model <- glm(class ~., data = trainData, family = 'binomial')
summary(Logistric_Regression_Model)

Probability <- predict(Logistic_Regression_Model, testData, type = 'response')
Predict_Class <- ifelse(Probability > 0.5, 1, 0)

Predict_Class <- factor(Predict_Class, levels = c("0", "1"))
Predict_Class <- factor(Predict_Class, levels = c(0, 1), labels = c("NEGATIVE", "POSITIVE"))
testData$class <- factor(testData$class, levels = c(0, 1), labels = c("NEGATIVE", "POSITIVE"))

Confusion_Matrix <- confusionMatrix(as.factor(Predict_Class), as.factor(testData$class), positive = "POSITIVE"); Confusion_Matrix

ROC <- roc(testData$class, Probability); ROC
AUC <- auc(ROC); AUC
